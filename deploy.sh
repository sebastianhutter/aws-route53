#!/bin/bash

export AWS_PROFILE=privat
export AWS_DEFAULT_REGION=eu-central-1


j2 route53.yaml.j2 route53.yaml > route53.cloudformation
aws cloudformation deploy --stack-name route53 --template-file route53.cloudformation