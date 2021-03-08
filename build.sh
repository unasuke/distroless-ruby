#!/usr/bin/env bash

docker build -t distroless-ruby:2.5 -f 2.5/Dockerfile .
docker build -t distroless-ruby:2.6 -f 2.6/Dockerfile .
docker build -t distroless-ruby:2.7 -f 2.7/Dockerfile .
docker build -t distroless-ruby:3.0 -f 3.0/Dockerfile .
