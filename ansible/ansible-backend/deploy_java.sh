#!/bin/bash

# PROCESSID=`ps -ef|grep -i sentiment-analysis-web-0.0.2-SNAPSHOT.jar | grep -v grep |awk '{print $2}'`

pidof java

if [ $? -eq 0 ]; then
	echo "JAVA APP is Already Running"
	exit 0
else
	echo "JAVA APP is NOT Running"
	java -jar sentiment-analysis-web-0.0.2-SNAPSHOT.jar --sa.logic.api.url http://localhost:5000 &
fi
