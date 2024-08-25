FROM ubuntu:22.04

WORKDIR /workspace

RUN apt update

RUN apt install -y default-jdk npm openjdk-17-jre-headless

RUN npm install -g https://github.com/effekt-lang/effekt/releases/latest/download/effekt.tgz

WORKDIR /code

COPY bin .

# CMD "./run.sh"