import { Sequelize } from 'sequelize';
import { SQL_HOST, SQL_PASSWORD } from '../config';

const sequelize = new Sequelize('main', 'root', SQL_PASSWORD, {
  host: SQL_HOST,
  dialect: 'mysql',
  port: 3306,
});

export const testGaussDbConnection = async () => {
  try {
    await sequelize.authenticate();
    console.log('GaussDB connection has been established successfully.');
  } catch (error) {
    console.error('Unable to connect to the database:', error);
  }
};

export default sequelize;
