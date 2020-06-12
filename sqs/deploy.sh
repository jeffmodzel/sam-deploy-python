PROFILE="personal"
REGION="us-west-2"

# Must already exist
BUCKET="sam-deploy-python"

PROJECT="sam-python-sqs"
ENVIRONMENT="dev"
STACK_NAME="$PROJECT-$ENVIRONMENT"
TEMPLATE="template.yaml"

sam build --template $TEMPLATE \
&& sam deploy \
  --template $TEMPLATE \
  --stack-name $STACK_NAME \
  --s3-bucket $BUCKET \
  --tags \
    "Project"=$PROJECT \
    "Environment"=$ENVIRONMENT \
  --parameter-overrides \
    ParameterKey=Project,ParameterValue=$PROJECT \
  --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND \
  --region $REGION \
  --profile $PROFILE