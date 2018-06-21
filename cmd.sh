#!/bin/bash

#replace bash, let locust handle signals, pass all arguments
exec locust -f /locust-tasks/tasks.py $@