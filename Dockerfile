FROM ubuntu
MAINTAINER Marcos Ricardo "marcosricardoss@gmail.com"

RUN apt-get -qq update \
    && apt-get install -y python3-dev \
    && apt-get install -y python3-pip \
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3 python \
    && pip3 install --upgrade pip

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt