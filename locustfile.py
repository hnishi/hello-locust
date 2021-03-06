import time
#from locust import HttpUser, task, between
from locust import HttpUser, task, constant

# See https://docs.locust.io/en/stable/quickstart.html


class QuickstartUser(HttpUser):
    # the simulated users wait between 1 and 2.5 seconds after each task (see below) is executed.
    #wait_time = between(1, 2.5)
    wait_time = constant(1)

    #@task
    #def simple_get(self):
    #    self.client.get("/api/mytest")

    #@task
    #def simple_post(self):
    #    self.client.post("/api/mytest", json={"username":"foo", "password":"bar"})

    @task
    def post_binary(self):
        req_body = (7).to_bytes(2, 'big')
        headers = {"Content-Type": "application/octet-stream"}
        self.client.post("/api/binary", data=req_body, headers=headers)

    # The below configuration will make Locust three times more likely to pick view_items than hello_world.
    #@task
    #def hello_world(self):
    #    self.client.get("/hello")
    #    #self.client.get("/world")

    #@task(3)
    #def view_items(self):
    #    for item_id in range(10):
    #        self.client.get(f"/item?id={item_id}", name="/item")
    #        time.sleep(1)

    # method with this name will be called for each simulated user when they start.
    #def on_start(self):
    #    self.client.post("/login", json={"username":"foo", "password":"bar"})
