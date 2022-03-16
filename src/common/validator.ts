import { check } from 'express-validator';

export const validateBaseUserModelInputSchema = () => {
  return [
    check('userId')
      .isString()
      .withMessage('Uid must be a string')
      .isAlphanumeric()
      .withMessage('Uid must be a alphanumeric')
      .trim()
      .escape(),
  ];
};
export const validateUserModelBodySchema = () => {
  return [
    check('userId')
      .isString()
      .withMessage('Uid must be a string')
      .isAlphanumeric()
      .withMessage('Uid must be a alphanumeric')
      .trim()
      .escape(),
    check('email')
      .isEmail()
      .withMessage('Invalid email format')
      .exists()
      .withMessage('Email must be present')
      .normalizeEmail(),
    check('username')
      .isString()
      .withMessage('Username must be a string')
      .isAlphanumeric()
      .withMessage('Username must be a alphanumeric')
      .isLength({ min: 3, max: 30 })
      .withMessage('Username must be at least 3 and at most 30')
      .exists()
      .withMessage('Username must be present')
      .trim()
      .escape(),
  ];
};
export const validateSchema = {
  id: {
    // The location of the field, can be one or more of body, cookies, headers, params or query.
    // If omitted, all request locations will be checked
    in: ['params'],
    errorMessage: 'ID is wrong',
    isInt: true,
    // Sanitizers can go here as well
    toInt: true,
  },
};
