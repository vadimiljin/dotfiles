#!/bin/bash

sudo apt install ansible git

git clone https://github.com/fazlearefin/ubuntu-dev-machine-setup.git

cd ubuntu-dev-machine-setup

#Invoke the following as yourself, the primary user (vadim). Not root.

ansible-playbook site.yml -e "{ laptop_mode: True }" -e "{ virtual_machine_mode: False }" -e "local_username=$(logname)" -K
