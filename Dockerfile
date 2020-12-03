FROM docker.elastic.co/kibana/kibana:7.8.0

RUN bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.31/logtrail-7.8.0-0.1.31.zip

COPY --chown=kibana:root logtrail-sample.json /usr/share/kibana/plugins/logtrail/logtrail.json
