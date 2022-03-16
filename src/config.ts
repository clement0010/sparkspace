import * as dotenv from 'dotenv';

dotenv.config();

export const PORT = process.env.PORT ? process.env.PORT : 3000;
export const SQL_PASSWORD = process.env.SQL_PASSWORD ? process.env.SQL_PASSWORD : 'Password123$';
export const SQL_HOST = process.env.SQL_HOST ? process.env.SQL_HOST : '124.71.218.114';
export const HUAWEI_SK = process.env.HUAWEI_SK;
export const HUAWEI_AK = process.env.HUAWEI_AK;
