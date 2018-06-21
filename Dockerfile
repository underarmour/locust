FROM python:3.6.2

EXPOSE 5557 5558 8089
CMD ["/cmd.sh"] 

COPY ./cmd.sh /cmd.sh

RUN pip3 install gevent pyzmq msgpack-python six flask click requests

COPY . /src

RUN cd /src && python setup.py install

ONBUILD COPY ./tasks/ /locust-tasks