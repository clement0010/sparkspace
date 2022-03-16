# SparkSpace
SparkSpace is a social learning app focusing on providing bite-sized video content for everyone.

## Requirements

[Node.js](https://nodejs.org) is required to install dependencies and run scripts via `npm`.

## Available Commands

| Command         | Description                                                                       |
| --------------- | --------------------------------------------------------------------------------- |
| `npm install`   | Install project dependencies                                                      |
| `npm run watch` | Build project and open web server running project, watching for changes           |
| `npm run dev`   | Builds project and open web server, but do not watch for changes                  |
| `npm run build` | Builds code bundle with production settings (minification, no source maps, etc..) |

## Configuration
Create a .env file with the following environment variables.

| Variables      | Description                                                                                                                        |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `PORT`         | Server port                                                                                                                        |
| `SQL_PASSWORD` | GaussDB(for MySQL) password                                                                                                        |
| `SQL_HOST`     | GaussDB(for MySQL) Elastic IP Address                                                                                              |
| `HUAWEI_AK`    | Huawei Cloud IAM access key                                                                                                        |
| `HUAWEI_SK`    | Huawei Cloud IAM secret key. Refer to [here](https://support.huaweicloud.com/intl/en-us/clientogw-obs/obs_03_0405.html) to see how |


## Writing Code

1. After cloning the repo, run `npm install` from your project directory. 
2. You can start the local development server by running `npm run dev`.
3. Start writing code!

## Deployment Guide
1. Deploy the server at Huawei Cloud Elastic Computing Server.
2. You can build the deployment server by running `npm run build`.
3. Start the deployment server by running `npm run start`.
4. Remember to expose the `PORT` from Huawei Cloud Virtual Private Network.
5. Note: Make sure you have `.env` file present in the root folder.