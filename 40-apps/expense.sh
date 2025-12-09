#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/kasinenisaikrishna/expense-ansible2.git
cd expense-ansible2
ansible playbook -i inventory.ini mysql.yaml
ansible playbook -i inventory.ini backend.yaml
ansible playbook -i inventory.ini frontend.yaml