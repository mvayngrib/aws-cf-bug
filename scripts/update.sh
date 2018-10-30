#!/bin/bash

source $(dirname $0)/env.sh

echo "creating stack $STACK_NAME"
aws cloudformation update-stack \
  --template-url https://mvayngrib-serverless-deployment.s3.amazonaws.com/nestedstacks/parent.json \
  --parameters file://parameters-update.json \
  --stack-name $STACK_NAME \
  --capabilities CAPABILITY_NAMED_IAM

echo "waiting for stack to finish getting updated..."
aws cloudformation wait stack-update-complete --stack-name $STACK_NAME
