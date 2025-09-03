#!/bin/bash

echo "------------서버시작---------------"
docker stop github-action-server || true
docker rm github-action-server || true
docker pull 354918411439.dkr.ecr.ap-northeast-2.amazonaws.com/github-action-server:latest
docker run -d --name github-action-server -p 8080:8080 354918411439.dkr.ecr.ap-northeast-2.amazonaws.com/github-action-server:latest
echo "------------서버 배포 끝------------"