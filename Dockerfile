FROM  confluentinc/confluent-cli:latest

USER root

WORKDIR /app

COPY /app /app

RUN dos2unix /app/script.sh

RUN chmod +x /app/script.sh

CMD ["/app/script.sh"]