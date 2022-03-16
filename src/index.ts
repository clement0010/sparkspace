import express, { json } from 'express';
import helmet from 'helmet';
import morgan from 'morgan';
import cors from 'cors';
import bodyParser from 'body-parser';
import sequelize, { testGaussDbConnection } from './client/gaussdb';
import { PORT } from './config';
import routes from './route';

const app = express();

// Middleware
app.use(cors());
app.use(helmet());
app.use(morgan('dev'));
app.use(json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(routes);

app.listen(PORT, async () => {
  try {
    console.log(`Server is listening on ${PORT}`);
    await testGaussDbConnection();
    await sequelize.query('DROP TABLE IF EXISTS users, videos, video_metadata CASCADE');
    await sequelize.sync();
    await sequelize.query('SHOW TABLES').then(function (rows) {
      console.log(JSON.stringify(rows));
    });
    return;
  } catch (error) {
    console.error(error);
  }
});
