Map configuration = {
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0",
  "auth": {
    "plugins": {
      "awsCognitoAuthPlugin": {
        "aws_cognito_region":
            'us-east-1', // (required) - Region where Amazon Cognito project was created
        "aws_user_pools_id":
            'us-east-1_5Glx5rFHf', // (optional) -  Amazon Cognito User Pool ID
        "aws_user_pools_web_client_id":
            '5a6fsec5fknnu78r2vje1qo8qv', // (optional) - Amazon Cognito App Client ID (App client secret needs to be disabled)
        "aws_mandatory_sign_in":
            'enable' // (optional) - Users are not allowed to get the aws credentials unless they are signed in
      }
    }
  }
};
