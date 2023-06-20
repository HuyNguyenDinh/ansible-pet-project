#!/bin/bash
source ansible-env/bin/activate
pip install -r requirements.txt
ansible-playbook -i inventory_create_ansible_user.yml create_ansible_user.yml
ansible-playbook -i inventory.yaml playbook.yaml