import { Request } from 'express';

interface CustomRequest<T> extends Request {
  body: T;
}

export interface BaseUserSchema {
  userId: number;
}

interface UserSchema extends BaseUserSchema {
  email: string;
  username: string;
}

export type UserRequestBody = CustomRequest<UserSchema>;

export interface ObjectMeta {
  Key: string;
  Size: string;
}

export interface VideoObject {
  Contents: ObjectMeta[];
  RequestId: string;
  Location: string;
  Bucket: string;
  Prefix: string;
}
