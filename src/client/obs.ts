/* eslint-disable @typescript-eslint/no-explicit-any */
import ObsClient from 'esdk-obs-nodejs';
import { Readable } from 'stream';
import { ObjectMeta } from '../common/types';
import { HUAWEI_AK, HUAWEI_SK } from '../config';

// Create an ObsClient instance.
const obsClient = new ObsClient({
  access_key_id: HUAWEI_AK, // Configure the AK.
  secret_access_key: HUAWEI_SK, // Configure the SK.
  server: 'obs.cn-south-1.myhuaweicloud.com', // Configure the endpoint.
  max_retry_count: 1,
  timeout: 20,
  ssl_verify: false,
  long_conn_param: 0,
});

const BUCKET_NAME = 'sparkspace-dev-videoo';
export const VIDEO_PREFIX = 'user_videos';

export const getObjectPreSignedUrl = async (videoName: string): Promise<string> => {
  const getObjectResult = await obsClient.createSignedUrlSync({
    Method: 'GET',
    Bucket: BUCKET_NAME,
    Key: videoName,
    Expires: '120', // expire in 2 minutes
  });
  console.log('SignedUrl-->' + getObjectResult['SignedUrl']);
  console.log(
    'ActualSignedRequestHeaders-->' + JSON.stringify(getObjectResult['ActualSignedRequestHeaders']),
  );
  return getObjectResult['SignedUrl'];
};

export const uploadObject = async (videoBuffer: Readable, fileName: string) => {
  try {
    console.log('Uploading file....');
    const result = await obsClient.putObject({
      Bucket: BUCKET_NAME,
      Key: fileName,
      Body: videoBuffer,
      ContentType: 'video/mp4',
    });
    if (result.CommonMsg.Status < 300) {
      console.log('RequestId-->' + result.InterfaceResult.RequestId);
      console.log('ETag-->' + result.InterfaceResult.ETag);
      console.log('VersionId-->' + result.InterfaceResult.VersionId);
      console.log('StorageClass-->' + result.InterfaceResult.StorageClass);
      return result;
    } else {
      console.log('Code-->' + result.CommonMsg.Code);
      console.log('Message-->' + result.CommonMsg.Message);
    }
  } catch (err) {
    console.error('Error-->' + err);
    throw err;
  }
};

export const getAllVideoObjects = async (): Promise<ObjectMeta[]> => {
  try {
    const result = await obsClient.listObjects({
      Bucket: BUCKET_NAME,
      MaxKeys: 5,
      Prefix: VIDEO_PREFIX,
    });

    if (result.CommonMsg.Status < 300) {
      console.log('RequestId-->' + result.InterfaceResult.RequestId);

      return result.InterfaceResult.Contents;
    } else {
      console.log('Code-->' + result.CommonMsg.Code);
      console.log('Message-->' + result.CommonMsg.Message);
    }
    return [];
  } catch (err) {
    console.error('Error-->' + err);
    throw err;
  }
};
