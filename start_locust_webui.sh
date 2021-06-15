
mkdir -p ./logs

# see https://docs.locust.io/en/stable/configuration.html
locust \
  --locustfile locustfile.py \
  --host http://www.example.com \
  --users 600 \
  --spawn-rate 100 \
  --csv ./logs/quickstart \
  --html ./logs/report.html \
  --loglevel INFO

  #--run-time 10 \
  #--headless \
  #--show-task-ratio
  #--logfile log_locust.txt
  #--csv-full-history
