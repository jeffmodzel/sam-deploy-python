PROFILE="personal"
REGION="us-west-2"

PROJECT="sam-python-test"
ENVIRONMENT="dev"
STACK_NAME="$PROJECT-$ENVIRONMENT"

aws cloudformation delete-stack --stack-name $STACK_NAME --profile $PROFILE --region $REGION
