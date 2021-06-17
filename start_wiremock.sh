
#docker run -d --name rodolpheche-wiremock-container \
docker run --name rodolpheche-wiremock-container \
  --ulimit nofile=524288:524288 \
  -p 8080:8080 \
  -v $PWD/wiremock_config:/home/wiremock \
  -u $(id -u):$(id -g) \
  rodolpheche/wiremock \
    --verbose


  #  --proxy-all="http://localhost:8080" \
  #  --record-mappings --verbose
  #-v $PWD/zzz:/home/wiremock \
  #-v $PWD/wiremock_config:/home/wiremock \
    #--proxy-all="http://localhost:8080" \
#    --proxy-all="http://registry.hub.docker.com" \
#    --record-mappings --verbose
#docker rm -f rodolpheche-wiremock-container
