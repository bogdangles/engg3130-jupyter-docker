#!/bin/bash

DATE=$(date +%Y-%m-%dT%H%M%S%z)
# This will fail unless you are logged into DockerHub
# Use this command to login: docker login --username=bbunescu
docker build . -t bbunescu/engg3130-jupyter-docker:latest -t bbunescu/engg3130-jupyter-docker:$DATE --no-cache || exit
docker push bbunescu/engg3130-jupyter-docker:latest
docker push bbunescu/engg3130-jupyter-docker:$DATE
