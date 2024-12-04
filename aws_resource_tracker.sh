#!/bin/bash

################################
# Author: Meghana Murthy
# Date: 2nd December 
# Version: v1
#
# This script will report the AWS resource usage
################################
# AWS S3
# AWS ec2
# AWS lamda
# AWS IAM users

set -e
set -x
{
echo "Print the buckets"
# to list s3 buckets
aws s3 ls

echo "Print the instance id"
# to list ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo "Print the lambdas"
# to list lambda
aws lambda list-functions

echo "Print the IAM users"
#to list IAM users
aws iam list-users
} > resourceTracker

