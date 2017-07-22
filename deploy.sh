#!/bin/bash

[ -z "${1}" ] && PROFILE="--profile privat"

j2 route53.yaml.j2 route53.yaml > route53.cloudformation
aws ${PROFILE} cloudformation deploy --stack-name route53 --template-file route53.cloudformation