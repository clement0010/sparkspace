import { AGCClient, CredentialParser } from '@agconnect/common-server';
import { AGCAuth, AuthErrorCode } from '@agconnect/auth-server';

const credential = CredentialParser.toCredential('../../agc-apiclient.json');

AGCClient.initialize(credential);
const agcAuth = AGCAuth.getInstance();

export const authenticate = (accessToken: string) => {
  agcAuth
    .verifyAccessToken(accessToken, true)
    .then(async (authAccessToken) => {
      // Verification successful.
      const test = await authAccessToken.getEmail();
      console.log({ authAccessToken, test });
    })
    .catch((e) => {
      console.error(e);
      if (e.getCode() == AuthErrorCode.VERIFY_ACCESS_TOKEN_ACCESS_TOKEN_IS_NULL.code) {
        // The user access token is empty.
      } else if (e.getCode() == AuthErrorCode.JWT_VERIFY_FAILED.code) {
        // Failed to authenticate the user access token.
      } else if (e.getCode() == AuthErrorCode.JWT_EXPIRE.code) {
        // The user access token has expired.
      } else if (e.getCode() == AuthErrorCode.JWT_REVOKED.code) {
        // The user access token has been revoked.
      }
    });
};
