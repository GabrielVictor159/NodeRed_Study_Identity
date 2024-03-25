FROM nodered/node-red:latest-minimal

COPY . /data

WORKDIR /usr/src/node-red

ENV EDITOR_ENABLED=false

ENTRYPOINT ["./entrypoint.sh"]