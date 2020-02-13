FROM microsoft/dotnet:2.2-sdk-alpine
RUN apk add --update \
    nodejs \
    nodejs-npm \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install virtualenv
