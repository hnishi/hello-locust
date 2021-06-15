
mkdir -p ./logs

# see https://docs.locust.io/en/stable/configuration.html
locust \
  --headless \
  --locustfile locustfile.py \
  --host http://www.example.com \
  --users 600 \
  --spawn-rate 100 \
  --run-time 10 \
  --csv ./logs/quickstart \
  --html ./logs/report.html \
  --loglevel INFO

  #--show-task-ratio
  #--logfile log_locust.txt
  #--csv-full-history
