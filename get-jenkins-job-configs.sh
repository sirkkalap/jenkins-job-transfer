#!/bin/bash
USER=xxxxxxx
API_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
JENKINS_BASE=http://xxxxxxxxxxxxxxx:8080
JOB_LIST_URL=$JENKINS_BASE/api/json?pretty=true
for job in $(wget --quiet -O - $JOB_LIST_URL | grep -o 'http://.*/job/[^"]*' | cut -d / -f 5)
do
    url=$JENKINS_BASE/job/$job/config.xml?token=$API_TOKEN
    wget --quiet -O $job.config --auth-no-challenge --http-user=$USER --http-password=$API_TOKEN $url
done