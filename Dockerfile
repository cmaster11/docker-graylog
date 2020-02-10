# Custom image to install plugins
FROM graylog/graylog:3.2.1-1

ARG PLUGINS_DIR=./plugin

USER root

RUN curl -o "$PLUGINS_DIR/metrics-reporter-prometheus.jar" -L "https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/3.0.0/metrics-reporter-prometheus-3.0.0.jar"
ADD ./graylog-plugin-http-output-1.0.1.jar "$PLUGINS_DIR/"

# Fix permissions
RUN chown --recursive "graylog":"graylog" ${PLUGINS_DIR}

USER graylog