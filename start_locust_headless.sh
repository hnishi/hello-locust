
mkdir -p ./logs

# see https://docs.locust.io/en/stable/configuration.html
locust \
  --headless \
  --locustfile locustfile.py \
  --host http://localhost:8080 \
  --users 2 \
  --spawn-rate 2 \
  --run-time 2 \
  --csv ./logs/quickstart \
  --html ./logs/report.html \
  --loglevel INFO

  #--host http://www.example.com \
  #--show-task-ratio
  #--logfile log_locust.txt
  #--csv-full-history
