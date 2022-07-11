#!/usr/bin/env bash

docker pull zricethezav/gitleaks:latest
docker run -v $1:/path zricethezav/gitleaks:latest detect --source="/path"

if [ $? -eq 0 ]; then
  docker-compose -f stack.yml up
else
  echo "Security issues were found! Deployment was blocked."
fi
