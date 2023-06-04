FROM ttbb/base:jdk11

ARG version=v0.7.0

ENV KAFKA_UI_HOME /opt/kafka-ui

RUN wget https://github.com/provectus/kafka-ui/releases/download/v0.7.0/kafka-ui-api-$version.jar && \
mkdir -p /opt/kafka-ui && \
mv kafka-ui-api-$version.jar /opt/kafka-ui/kafka-ui-api-$version.jar

WORKDIR /opt/kafka-ui
