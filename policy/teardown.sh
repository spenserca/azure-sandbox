#!/usr/bin/env bash

DIR=${PWD##*/}

echo "Tearing down $DIR project"
terraform destroy