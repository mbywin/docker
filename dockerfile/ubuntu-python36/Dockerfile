FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y software-properties-common \
    && add-apt-repository ppa:jonathonf/python-3.6

RUN apt-get update \
    && apt-get install -y build-essential python3.6 python3.6-dev python3-pip \
    && apt-get clean

# update pip
RUN python3.6 -m pip install pip --upgrade --no-cache-dir \
    && python3.6 -m pip install wheel --no-cache-dir
