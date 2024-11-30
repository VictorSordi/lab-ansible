control-node
ansible -m ping all

ssh-keygen

ansible-galaxy install geerlingguy.mysql
ansible-galaxy install geerlingguy.mysql --ignore-errors
ansible-playbook db.yaml --check
ansible-playbook db.yaml

caso não for usar:
sudo ansible-playbook db.yaml --become

ansible-playbook app.yaml

curl -H "Content-Type: application/json" --data @note.json http://app:8080/api/notes

curl http://app:8080/api/notes

curl -X DELETE -H "Content-Type: application/json" http://app:8080/api/notes

db
Precisa copiar a chave publica do control-node e copiar no provision.sh do db

app
Precisa copiar a chave publica do control-node e copiar no provision.sh do app