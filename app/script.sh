#!/bin/bash

if [ -f auth.env ]; then
  # Carregar variáveis de ambiente do arquivo
  export $(grep -v '^#' auth.env | xargs)
fi

# Use as variáveis para fazer o login no Confluent Cloud
echo -e "$EMAIL\n$PASSWORD" | confluent login --save

# Opcional: Executar um comando após o login
confluent connect cluster create --config-file $CONNECT_JSON --cluster $CLUSTER

#tail -f /dev/null