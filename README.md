# hello-locust

## Usage

```sh
$ locust -f locustfile.py
```

Open http://127.0.0.1:8089/ in a browser.

Enter the followings.

- Number of total users to simulate
- Spawn rate (users spawned/second)
- Host (e.g. http://www.example.com)

## References

### Locust

- homepage: https://locust.io/
- doc: https://docs.locust.io/en/stable/
- code: https://github.com/locustio/locust

### Requests

- doc: https://docs.python-requests.org/en/master/user/quickstart

---

## WireMock

```sh
docker pull rodolpheche/wiremock:2.28.1
```

Start the container of a mock server.

```sh
docker run -d --name rodolpheche-wiremock-container \
  -p 8080:8080 \
  -v $PWD/wiremock_config:/home/wiremock \
  -u $(id -u):$(id -g) \
  rodolpheche/wiremock \
    --verbose
```

You can check lists of mocked APIs.

With a browser, access the following URL.

`http://localhost:8080/__admin/mappings`

Send a get-reqest.

```sh
$ curl -X GET "http://localhost:8080/api/mytest" -w '\n%{http_code}\n'
More content

200
```

Delete the container.

```sh
docker rm -f rodolpheche-wiremock-container
```

- doc: http://wiremock.org/docs/running-standalone/
- docker image: https://github.com/rodolpheche/wiremock-docker
