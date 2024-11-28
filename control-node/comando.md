contol-node
ansible -m ping all

ssh-keygen

---
/etc/ansible/ansible.cfg
[galaxy]
server = https://old-galaxy.ansible.com/

---

ansible-galaxy install geerlingguy.mysql
ansible-galaxy install geerlingguy.mysql --ignore-errors
ansible-playbook db.yaml --check
ansible-playbook db.yaml

caso não for usar:
sudo ansible-playbook db.yaml --become

db
Precisa copiar a chave publica do control-node e copiar no provision.sh do db

app