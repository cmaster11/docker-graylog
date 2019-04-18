# Custom image to install plugins
FROM graylog/graylog:3.0.1-1

ARG PLUGINS_DIR=./plugin

RUN curl -o "$PLUGINS_DIR/metrics-reporter-prometheus.jar" -L "https://github.com/graylog-labs/graylog-plugin-metrics-reporter/releases/download/2.4.0-beta.3/metrics-reporter-prometheus-2.4.0-beta.3.jar"

# Fix permissions
RUN chown --recursive "graylog":"graylog" ${PLUGINS_DIR}