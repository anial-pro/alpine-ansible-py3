#!/bin/sh

cp -R /tmp/volumes/.ssh /tmp/volumes/playbooks /ansible/

chown -R ansible:ansible /ansible

exec su-exec ansible "$@"
