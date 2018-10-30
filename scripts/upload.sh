#!/bin/bash

source $(dirname $0)/env.sh

aws s3 cp \
  --recursive \
  --acl public-read \
  --exclude ".git/*" \
  --exclude "scripts/*" \
  . s3://mvayngrib-serverless-deployment/nestedstacks/
