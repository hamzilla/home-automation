FROM ubuntu:22.04

RUN mkdir -p /app

WORKDIR /app
# Install Ubuntu packages
COPY src/backups/ubuntu-pkg.txt .
RUN apt -y update
RUN xargs -I {} -a /app/ubuntu-pkg.txt  apt-get install {} -y

CMD echo 'foo'
