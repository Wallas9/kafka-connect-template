FROM  confluentinc/confluent-cli:latest
WORKDIR /app
COPY /app /app
CMD [ "/app/script.sh" ]