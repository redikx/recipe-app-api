FROM python:3.7.4-alpine
MAINTAINER Rado Zyskowski

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r ./requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D puser
USER puser