from locust import HttpLocust, TaskSet, task


class CustomApiTaskSet(TaskSet):
    @task(1)
    def status(self):
        self.client.get(
            '/'
        )

class CustomApiLocust(HttpLocust):
    task_set = CustomApiTaskSet