#!/bin/bash
source ansible-env/bin/activate
pip install -r requirements.txt
ansible-playbook -i inventory/inventory_create_ansible_user.yaml playbook/create_ansible_user.yaml
ansible-playbook -i inventory/inventory.yaml playbook/test-playbook.yaml