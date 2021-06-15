#!/bin/bash

#ulimit -n 1024
ulimit -n
mkdir -p ./logs

locust --locustfile locustfile.py --worker > ./logs/log_worker01.txt 2>&1 &
locust --locustfile locustfile.py --worker > ./logs/log_worker02.txt 2>&1 &
locust --locustfile locustfile.py --worker > ./logs/log_worker03.txt 2>&1 &
locust --locustfile locustfile.py --worker > ./logs/log_worker04.txt 2>&1 &

# see https://docs.locust.io/en/stable/configuration.html
locust \
  --master \
  --locustfile locustfile.py \
  --host http://www.example.com \
  --users 2400 \
  --spawn-rate 400 \
  --csv ./logs/quickstart \
  --html ./logs/report.html \
  --loglevel INFO

  #--host http://localhost:8080 \
  #--host http://www.example.com \
  #--run-time 10 \
  #--headless \
  #--show-task-ratio
  #--logfile log_locust.txt
  #--csv-full-history
