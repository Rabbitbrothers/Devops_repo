#!/bin/bash

############################################
# Author : SAI YADAV
# Date   : 8/24/2026
# Purpose: Stop AWS EC2 instance
############################################

set -e

source ./aws_credentials.env

echo "Stopping EC2 instance..."

aws configure set aws_access_key_id "$ACCESS_KEY"
aws configure set aws_secret_access_key "$SECRET_KEY"
aws configure set region "ap-south-1"
aws configure set output "json"

aws ec2 stop-instances \
    --instance-ids "$INSTANCE_ID" \
    --region ap-south-1

echo "EC2 instance stop command sent successfully."

#ENDDDDDD
