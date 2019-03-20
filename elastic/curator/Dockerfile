FROM python:3.6-alpine

WORKDIR /app
COPY crontab /etc/cron.d/cron
RUN chmod 0644 /etc/cron.d/cron &&\
    apk add --no-cache dcron &&\ 
    pip install elasticsearch-curator
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
RUN mkdir /app/actions/

ENTRYPOINT ["/app/start.sh"]
CMD ["--config", "/app/config.yml", "/app/actions.yml"]