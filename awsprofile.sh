#!/usr/bin/env bash

awsprofile() {
  export AWS_PROFILE=$(aws configure list-profiles | fzf)
  echo "AWS_PROFILE set to: $AWS_PROFILE"
  aws sts get-caller-identity
}
