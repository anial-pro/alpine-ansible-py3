#!/bin/bash

docker run --rm -it \
  -v ~/.ssh/id_rsa:/tmp/volumes/.ssh/id_rsa:ro \
  -v ~/.ssh/id_rsa.pub:/tmp/volumes/.ssh/id_rsa.pub:ro \
  -v ${PWD}:/tmp/volumes/playbooks:ro \
  -v /var/log/ansible/ansible.log \
  anial/docker-ansible:latest "$@"
