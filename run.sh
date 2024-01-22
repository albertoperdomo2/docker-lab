#!/bin/bash

if $(command -v python >/dev/null 2>&1); then
 ENVS=$(python -c 'import json,yaml,sys;print(json.dumps(yaml.safe_load(sys.stdin)))' < config/envs.yaml)
fi

AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID:-$(echo $ENVS| jq -r '.aws_access_key_id')}
AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY:-$(echo $ENVS | jq -r '.aws_secret_access_key')}

docker run -it -p 8080:8080 --name webterminal --env AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} --env AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} cc/lab:latest
