# ansible-pet-project
Ansible project for setup VPS to deploy night_owl_V2 project public on port 8008 with gunicorn
## Before run the script, you need to add your ssh (publickey) to vps as root. Then ssh first time to it for adding host to known_hosts file in your ansible server
! Important
Change host ip in file which its prefix is inventory to your vps ip
The ansible_new_user (in inventory_create_ansible_user) and ansible_user (in inventory) must be the same.
