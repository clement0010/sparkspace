import {
  CreationOptional,
  DataTypes,
  HasManyAddAssociationMixin,
  HasManyAddAssociationsMixin,
  HasManyCountAssociationsMixin,
  HasManyCreateAssociationMixin,
  HasManyGetAssociationsMixin,
  HasManyHasAssociationMixin,
  HasManyHasAssociationsMixin,
  HasManyRemoveAssociationMixin,
  HasManyRemoveAssociationsMixin,
  HasManySetAssociationsMixin,
  InferAttributes,
  InferCreationAttributes,
  Model,
  NonAttribute,
} from 'sequelize';
import sequelize from '../client/gaussdb';
import { Video } from './video';

export class User extends Model<InferAttributes<User>, InferCreationAttributes<User>> {
  declare userId: CreationOptional<number>;
  declare username: string;
  declare email: string;

  // timestamps!
  // createdAt can be undefined during creation
  declare createdAt: CreationOptional<Date>;
  // updatedAt can be undefined during creation
  declare updatedAt: CreationOptional<Date>;

  // Since TS cannot determine model association at compile time
  // we have to declare them here purely virtually
  // these will not exist until `Model.init` was called.
  declare getVideos: HasManyGetAssociationsMixin<Video>;
  declare addVideo: HasManyAddAssociationMixin<Video, number>;
  declare addVideos: HasManyAddAssociationsMixin<Video, number>;
  declare setVideos: HasManySetAssociationsMixin<Video, number>;
  declare removeVideo: HasManyRemoveAssociationMixin<Video, number>;
  declare removeVideos: HasManyRemoveAssociationsMixin<Video, number>;
  declare hasVideo: HasManyHasAssociationMixin<Video, number>;
  declare hasVideos: HasManyHasAssociationsMixin<Video, number>;
  declare countVideos: HasManyCountAssociationsMixin;
  declare createVideo: HasManyCreateAssociationMixin<Video, 'ownerId'>;

  // You can also pre-declare possible inclusions, these will only be populated if you
  // actively include a relation.
  declare videos?: NonAttribute<Video[]>; // Note this is optional since it's only populated when explicitly requested in code
}

User.init(
  {
    userId: {
      type: DataTypes.INTEGER.UNSIGNED,
      autoIncrement: true,
      primaryKey: true,
    },
    username: {
      type: new DataTypes.STRING(128),
      allowNull: false,
    },
    email: {
      type: new DataTypes.STRING(128),
      allowNull: false,
      validate: {
        isEmail: true,
      },
    },
    createdAt: DataTypes.DATE,
    updatedAt: DataTypes.DATE,
  },
  {
    timestamps: true,
    tableName: 'users',
    sequelize, // passing the `sequelize` instance is required
  },
);
