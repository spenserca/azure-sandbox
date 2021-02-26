#!/usr/bin/env bash

PROJECT_NAME="$1"

if [ -z "$PROJECT_NAME" ]; then echo "[ERROR] Pass the project name as the first parameter"; exit 1; fi

echo "Initializing terraform in project"
terraform init "$PROJECT_NAME"

echo "Generating terraform plan"
terraform plan "$PROJECT_NAME"