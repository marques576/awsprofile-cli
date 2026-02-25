#!/usr/bin/env bash

awsprofile() {
  export AWS_PROFILE=$(aws configure list-profiles | fzf)
  echo "AWS_PROFILE set to: $AWS_PROFILE"

  if ! aws sts get-caller-identity; then
    echo ""
    echo "Try running: aws sso login"
  fi
}
