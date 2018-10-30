#!/bin/bash

source $(dirname $0)/env.sh

echo "creating stack $STACK_NAME"
aws cloudformation create-stack \
  --template-url https://mvayngrib-serverless-deployment.s3.amazonaws.com/nestedstacks/parent.json \
  --parameters file://parameters-create.json \
  --stack-name $STACK_NAME \
  --disable-rollback \
  --capabilities CAPABILITY_NAMED_IAM

echo "waiting for stack to finish getting created..."
aws cloudformation wait stack-create-complete --stack-name $STACK_NAME
