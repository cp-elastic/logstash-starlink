FROM docker.elastic.co/logstash/logstash:8.17.4 AS base
USER root
RUN apt update && apt install wget
RUN wget https://github.com/fullstorydev/grpcurl/releases/download/v1.9.3/grpcurl_1.9.3_linux_amd64.deb && apt install ./grpcurl_1.9.3_linux_amd64.deb && rm grpcurl_1.9.3_linux_amd64.deb