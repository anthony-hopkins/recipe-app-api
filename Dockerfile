FROM python:3.9-alpine3.13
LABEL maintainer="https://github.com/anthony-hopkins"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./app /app
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
WORKDIR /app
EXPOSE 8000

ARG DEV=false

RUN pip install --upgrade pip && \
    pip install -r /tmp/requirements.txt && \
    if [ ${DEV} = true ]; then \
    pip install -r /tmp/requirements.dev.txt; \
    fi && \
    rm -rf /tmp && \
    adduser --disabled-password --no-create-home django-user

USER django-user
