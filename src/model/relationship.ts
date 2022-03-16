import { User } from './user';
import { Video, VideoMetadata } from './video';

// Here we associate which actually populates out pre-declared `association` static and other methods.
Video.belongsTo(User, {
  targetKey: 'userId',
  foreignKey: {
    name: 'ownerId',
    allowNull: false,
  },
});
User.hasMany(Video, {
  sourceKey: 'userId',
  foreignKey: 'ownerId',
  as: 'videos', // this determines the name in `associations`!
});

Video.hasOne(VideoMetadata, {
  sourceKey: 'videoId',
  foreignKey: {
    name: 'videoId',
  },
});
VideoMetadata.belongsTo(Video, {
  targetKey: 'videoId',
  foreignKey: {
    name: 'videoId',
    allowNull: false,
  },
});
