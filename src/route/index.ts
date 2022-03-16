import express from 'express';
import user from './user';
import video from './video';

const router = express.Router();

router.use('/api/user', user);
router.use('/api/video', video);

export default router;
