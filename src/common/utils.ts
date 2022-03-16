import { Readable } from 'stream';
import { ObjectMeta } from './types';

export const parseVideoBufferToReadable = (videoBuffer: Buffer) => {
  const stream = Readable.from(videoBuffer.toString());
  return stream;
};

export const parseVideoObject = (videoObjects: ObjectMeta[]) => {
  const result: string[] = [];
  for (let j = 0; j < videoObjects.length; j++) {
    console.log('Contents[' + j + ']:');
    console.log('Key-->' + videoObjects[j]['Key']);
    console.log('Size-->' + videoObjects[j]['Size']);
    result.push(videoObjects[j]['Key']);
  }
  return result;
};
