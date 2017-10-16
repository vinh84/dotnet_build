FROM ubuntu:latest
RUN '[[ -f /.dockerenv ]] && echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config'
RUN mkdir -p ~/.ssh
RUN apt-get update \
        && apt-get install -y openssh-client \
        && rm -rf /var/lib/apt/lists/*
