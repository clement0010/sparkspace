import {
  CreationOptional,
  DataTypes,
  InferAttributes,
  InferCreationAttributes,
  Model,
  NonAttribute,
} from 'sequelize';
import sequelize from '../client/gaussdb';
import { User } from './user';

export class Video extends Model<InferAttributes<Video>, InferCreationAttributes<Video>> {
  // id can be undefined during creation when using `autoIncrement`
  declare videoId: CreationOptional<number>;
  declare ownerId: number;
  declare name: string;

  // `owner` is an eagerly-loaded association.
  // We tag it as `NonAttribute`
  declare owner?: NonAttribute<User>;

  // createdAt can be undefined during creation
  declare createdAt: CreationOptional<Date>;
  // updatedAt can be undefined during creation
  declare updatedAt: CreationOptional<Date>;
}

export class VideoMetadata extends Model<
  InferAttributes<VideoMetadata>,
  InferCreationAttributes<VideoMetadata>
> {
  // id can be undefined during creation when using `autoIncrement`
  declare metaId: CreationOptional<number>;
  declare videoId: number;
  declare name: string;

  // `owner` is an eagerly-loaded association.
  // We tag it as `NonAttribute`
  declare video?: NonAttribute<Video>;

  // createdAt can be undefined during creation
  declare createdAt: CreationOptional<Date>;
  // updatedAt can be undefined during creation
  declare updatedAt: CreationOptional<Date>;
}

Video.init(
  {
    videoId: {
      type: DataTypes.INTEGER.UNSIGNED,
      autoIncrement: true,
      primaryKey: true,
    },
    ownerId: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
    },
    name: {
      type: new DataTypes.STRING(128),
      allowNull: false,
    },
    createdAt: DataTypes.DATE,
    updatedAt: DataTypes.DATE,
  },
  {
    sequelize,
    tableName: 'videos',
  },
);

VideoMetadata.init(
  {
    metaId: {
      type: DataTypes.INTEGER.UNSIGNED,
      autoIncrement: true,
      primaryKey: true,
    },
    videoId: {
      type: DataTypes.INTEGER.UNSIGNED,
      allowNull: false,
    },
    name: {
      type: new DataTypes.STRING(128),
      allowNull: false,
    },
    createdAt: DataTypes.DATE,
    updatedAt: DataTypes.DATE,
  },
  {
    sequelize,
    tableName: 'video_metadata',
  },
);
