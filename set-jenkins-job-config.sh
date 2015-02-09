#!/bin/bash

JOB_CONFIG=$(echo ${1} | awk '/^[a-zA-Z0-9._%]+$/')
JOB_CONFIG=${JOB_CONFIG:?"Usage: $0 <job-name.config>"}

job=${JOB_CONFIG%.*}

USER=xxxxxxx
API_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
JENKINS_HOST=xxxxxxxxxxxxxxxxxxx
JENKINS_BASE=http://$USER:$API_TOKEN@JENKINS_HOST:8080

url=$JENKINS_BASE/job/$job/config.xml

wget -O /dev/null --post-file=${JOB_CONFIG} --auth-no-challenge $url

