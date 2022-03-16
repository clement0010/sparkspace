import express from 'express';
import { validationResult, query, body } from 'express-validator';

import { BaseUserSchema, UserRequestBody } from '../common/types';
import { User } from '../model';

const router = express.Router();

// Get User
router.get(
  '/',
  [
    query('userId')
      .trim()
      .escape()
      .isAlphanumeric()
      .withMessage('userId must be a alphanumeric')
      .exists()
      .withMessage('userId must be present'),
  ],
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
      console.log('Incoming query user request.', { req: req.query });
      const errors = validationResult(req);

      if (!errors.isEmpty()) {
        return res.status(422).json({ errors: errors.array() });
      }

      const userId = req.query.userId;

      const user = await User.findByPk(userId);
      console.log('DB query result', { user });
      if (user === null) {
        res.send({ message: 'No user found' });
      } else {
        res.send({ user });
      }
    } catch (error) {
      console.error(error);
      res.status(500).send('Error: ' + error);
    }
  },
);

// Create User
router.post(
  '/',
  [
    body('username')
      .trim()
      .escape()
      .isString()
      .withMessage('username must be a string')
      .isAlphanumeric()
      .withMessage('username must be a alphanumeric'),
    body('email').trim().escape().isEmail().withMessage('email must be a valid email'),
  ],
  async (req: UserRequestBody, res: express.Response) => {
    try {
      console.log('Incoming create user request.', { req: req.body });
      const errors = validationResult(req);

      if (!errors.isEmpty()) {
        return res.status(422).json({ errors: errors.array() });
      }

      const { username, email } = req.body;

      const { userId } = await User.create({
        username,
        email,
      });

      res.send({ userId: userId });
    } catch (error) {
      console.error(error);
      res.status(500).send('Error: ' + error);
    }
  },
);

export default router;
