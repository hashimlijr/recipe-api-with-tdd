FROM python:3.11-alpine
LABEL org.opencontainers.image.authors="Sahil Hashimli"

ENV PYTHONUNBUFFERED 1

COPY ./requirement.txt /requirement.txt
RUN pip install -r /requirement.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user