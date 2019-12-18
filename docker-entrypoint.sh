#!/bin/bash

# Copy ssh keys and playbook files. Need for run from shell
if [[ -d /tmp/volumes/.ssh && -d /tmp/volumes/playbooks ]]; then
    cp -r /tmp/volumes/.ssh /tmp/volumes/playbooks /ansible/
fi

chown -R ansible:ansible /ansible

exec su-exec ansible "$@"
