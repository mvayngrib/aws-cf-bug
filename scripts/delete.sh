#!/bin/bash

source $(dirname $0)/env.sh

echo "deleting stack $STACK_NAME"
aws cloudformation delete-stack --stack-name $STACK_NAME &&
echo "waiting for stack to finish getting deleted..."
aws cloudformation wait stack-delete-complete --stack-name $STACK_NAME &&
sleep 5 ||
echo 'stack not found'
