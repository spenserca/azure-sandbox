#!/usr/bin/env bash

echo "Initializing terraform in project"
terraform init

echo "Generating terraform plan"
terraform plan

echo "Deploying terraform plan"
terraform apply