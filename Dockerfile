FROM confluentinc/cp-kafka-connect-base:latest
RUN   confluent-hub install --no-prompt debezium/debezium-connector-postgresql:1.1.0 \
   && confluent-hub install --no-prompt debezium/debezium-connector-mysql:1.1.0 \
   && confluent-hub install --no-prompt debezium/debezium-connector-sqlserver:latest