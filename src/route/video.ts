import express from 'express';
import { body, validationResult } from 'express-validator';
import multer from 'multer';
import {
  getObjectPreSignedUrl,
  getAllVideoObjects,
  uploadObject,
  VIDEO_PREFIX,
} from '../client/obs';

import { BaseUserSchema } from '../common/types';
import { parseVideoBufferToReadable, parseVideoObject } from '../common/utils';
import { Video } from '../model';

const router = express.Router();

// Get Video
router.get(
  '/',
  async (
    req: express.Request<
      Record<string, never>,
      Record<string, never>,
      Record<string, never>,
      BaseUserSchema
    >,
    res: express.Response,
  ) => {
    try {
      console.log('Incoming query video request.', { req: req.query });
      const videoObjects = await getAllVideoObjects();
      const videoList = parseVideoObject(videoObjects);

      const preSignedUrlList = await Promise.all(
        videoList.map(async (videoPath) => {
          if (videoPath === `${VIDEO_PREFIX}/`) {
            return;
          }
          return await getObjectPreSignedUrl(videoPath);
        }),
      );

      res.json({ message: 'Successfully query videos', videos: preSignedUrlList });
    } catch (error) {
      console.error(error);
      res.status(500).send('Error: ' + error);
    }
  },
);

// Create Video
router.post(
  '/',
  multer().single('video'),
  [
    body('userId')
      .trim()
      .escape()
      .isAlphanumeric()
      .withMessage('userId must be a alphanumeric')
      .exists()
      .withMessage('userId must be present'),
    body('video').trim().escape().exists().withMessage('video must be present'),
  ],
  async (req: express.Request, res: express.Response) => {
    try {
      console.log('Incoming upload video request.', { req: req.file });
      const errors = validationResult(req);

      if (!errors.isEmpty()) {
        return res.status(422).json({ errors: errors.array() });
      }

      const fileBuffer = req.file?.buffer;
      const fileName = req.file?.originalname;
      const userId = parseInt(req.body.userId as string);
      if (!fileBuffer || !fileName) {
        throw new Error('Cannot find video buffer');
      }
      const readableVideoBuffer = parseVideoBufferToReadable(fileBuffer);
      const result = await uploadObject(readableVideoBuffer, fileName);
      if (!result) {
        throw new Error('Upload file failed');
      }
      const video = await Video.create({ ownerId: userId, name: fileName });
      console.log('File upload successful', { result });

      res.json({ message: 'File upload successful', result: video });
    } catch (error) {
      console.error(error);
      res.status(500).send('Error: ' + error);
    }
  },
);

export default router;
