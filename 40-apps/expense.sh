# #!/bin/bash
# dnf install ansible -y
# cd /tmp
# git clone https://github.com/kasinenisaikrishna/expense-ansible2.git
# cd expense-ansible2
# ansible playbook -i inventory.ini mysql.yaml
# ansible playbook -i inventory.ini backend.yaml
# ansible playbook -i inventory.ini frontend.yaml

#!/bin/bash

# Wait for network and DNF to be ready
sleep 20

# Install needed packages
dnf install -y git ansible

cd /tmp

# Clone repository
git clone https://github.com/kasinenisaikrishna/expense-ansible2.git

cd expense-ansible2

# Run Ansible playbooks
ansible-playbook -i inventory.ini mysql.yaml
ansible-playbook -i inventory.ini backend.yaml
ansible-playbook -i inventory.ini frontend.yaml
