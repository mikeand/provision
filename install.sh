#!/usr/bin/bash

HOST=$([[ -e /etc/hostname  ]] && cat /etc/hostname)
if [[ "$HOST" == "" ]]; then
  echo "/etc/hostname must be populated with name of this ansible host"
  exit 1
fi


ansible-playbook ./main.yml --inventory ./hosts --limit $HOST "$@"

