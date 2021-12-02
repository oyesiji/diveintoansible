ssh ubuntu1
ssh-keygen
ssh-copy-id ansible@ubunutu1
ssh-copy-id ansible@ubuntu1
clear
sudo apt update
sudo apt install sshpass
echo password > password.txt
for user in asible root; do for os in ubuntu centos; do for instance in 1 2 3; do sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}; done; done; done
ssh ansible@centos1
for user in ansible root; do for os in ubuntu centos; do for instance in 1 2 3; do sshpass -f password.txt ssh-copy-id -o StrictHostKeyChecking=no ${user}@${os}${instance}; done; done; done
ssh ansible@centos1
ll
ansible centos1 -m setup -a 'gather_subset=network'
git clone https://github.com/oyesiji/diveintoansible.git
cd diveintoansible/
ll
cd Ansible\ Playbooks\,\ Introduction/
cd Ansible\ Playbooks\,\ Facts/
ll
cd 01
ll
cat ansible.cfg 
cat facts_playbook.yaml 
ansible centos1 -m setup -a 'gather_subset=network'
cd diveintoansible/
cd Ansible\ Playbooks\,\ Introduction/
cd Ansible\ Playbooks\,\ Facts/
cd 01
ll
ansible centos1 -m setup -a 'gather_subset=network'
ansible centos1 -m setup -a 'gather_subset=network' | more
clear
ansible centos1 -m setup -a 'filter=ansible_memfree_mb' | more
cd ../02
ll
cd templates/
ll
./getdate1.fact 
cat getdate1.fact 
cat getdate2.fact 
./getdate2.fact 
sudo mkdir -p /etc/ansible/facts.d
sudo cp * /etc/ansible/facts.d/
cd ..
ansible ubuntu-c -m setup | more
cat facts_playbook.yaml 
cd ../04
ll
cats facts_playbook.yaml 
cat facts_playbook.yaml 
cd ..05
cd ../05
ll
cats facts_playbook.yaml 
cat facts_playbook.yaml 
ansible-playbook facts_playbook.yaml 
cd ../06
ansible linux -m file -a 'path=/home/ansible/facts.d state=absent'
cd diveintoansible/
cd Ansible\ Playbooks\,\ Introduction/Templating\ with\ Jinja2/
cd 01
cat jinja2_playbook.yaml 
ansible-playbook jinja2_playbook.yaml 
clear
cd ../02
ll
ansible-playbook jinja2_playbook.yaml 
cd ../o3
cd ../03
ll
cat jinja2_playbook.yaml 
ansible-playbook jinja2_playbook.yaml 
cd ../04
ll
cat jinja2_playbook.yaml 
ansible-playbook jinja2_playbook.yaml 
cd ../05
cd ../06
ansible-playbook jinja2_playbook.yaml 
cd ../08
cd ../10
ll
cat jinja2_playbook.yaml 
cd ..
cd Ansible\ Playbooks\,\ Creating\ and\ Executing/solution/
cd 01
ll
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml 
cd ../02
ll
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml 
cd ../03
ll
clear
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml 
cd ../04
ll
ansible-playbook nginx_playbook.yaml 
cd ../05
clear
ll
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml 
cd ../06
ll
cat nginx_playbook.yaml 
ll
cat group_vars/*
cat host_vars/*
ansible-playbook nginx_playbook.yaml 
cat hosts
cd ../07
ll
cat ansible.cfg 
ansible-playbook nginx_playbook.yaml 
cd ../08
ll
more nginx_playbook.yaml 
clear
ansible-playbook nginx_playbook.yaml 
cd ../09
ll
ansible-playbook nginx_playbook.yaml 
cd diveintoansible/
cd Ansible\ Playbooks\,\ Deep\ Dive/Playbook\ Modules/
cd 01
cat set_fact_playbook.yaml 
ansible-playbook set_fact_playbook.yaml 
cd ../02
ll
cat set_fact_playbook.yaml 
ansible-playbook set_fact_playbook.yaml 
cd ../03
ll

ansible-playbook set_fact_playbook.yaml 
ll
cat hosts
cd ../04
ll
cat pause_playbook.yaml 
ansible-playbook pause_playbook.yaml 
cd ../05
ll
cat pause_playbook.yaml 
ansible-playbook pause_playbook.yaml 
cd ../06
ll
cat wait_for_playbook.yaml 
ansible-playbook pause_playbook.yaml 
ansible-playbook wait_for_playbook.yaml 
ansible-playbook wait_for_playbook.yaml &
ansible centos3 -m service -a "name=nginx state=started"
cd ../07
ll
cd conf.d
ll
cat centos1 
cat defaults 
cd ..
ll
cat assemble_playbook.yaml 
ansible-playbook assemble_playbook.yaml 
cd ../08
ll
cat add_host_playbook.yaml 
cd ../09
ll
ansible-playbook add_host_playbook.yaml 
poweroff
cd diveintoansible/
cd Ansible\ Playbooks\,\ Deep\ Dive/
cd Playbook\ Modules/
cd 01
cat set_fact_playbook.yaml 
ansible-playbook set_fact_playbook.yaml 
cd ../02
clear
ansible-playbook set_fact_playbook.yaml 
cd ../03
clear
ansible-playbook set_fact_playbook.yaml 
cd ../04
ll
cat pause_playbook.yaml 
clear
ansible-playbook pause_playbook.yaml 
cd ../05
clear
ll
cd ../06
ll
cat wait_for_playbook.yaml 
cd ../11
ll
ansible-playbook fetch_playbook.yaml 
clear
cd ..
cd Dynamic\ Inventories/
cd 01
./inventory.py 
./inventory.py --list
./inventory.py --host centos1
./inventory.py --host centos2
cd ..
cd Register\ and\ When/
cd 02
ansible-playbook register_playbook.yaml 
cd ../03
clear
ll
cat register_playbook.yaml 
ansible-playbook register_playbook.yaml 
cd ../04
clear
cat register_playbook.yaml 
ansible-playbook register_playbook.yaml 
cd ../05
cd ../06
ll
clear
cat register_playbook.yaml 
cd ../07
ll
cat ansible.cfg 
cd ../08
ansible-playbook register_when_playbook.yaml 
clear
cd ../09
ansible-playbook register_when_playbook.yaml 
cd ../11
ll
cat register_when_playbook.yaml 
ll
cd diveintoansible/
cd Ansible\ Playbooks\,\ Deep\ Dive/
cd Looping
ll
cd 01
ll
cat ansible.cfg 
cat hosts
cat motd_playbook.yaml 
ansible-playbook motd_playbook.yaml 
cd ../03
ansible-playbook motd_playbook.yaml 
cd ../05
ll
ansible-playbook motd_playbook.yaml 
ansible-playbook user_playbook.yaml 
cd ../06
clear
ll
cat user_playbook.yaml 
cd ../07
ll
cat user_playbook.yaml 
ansible-playbook user_playbook.yaml 
ssh centos3 tail -5 /etc/passwd
cd ../08
ll
ansible-playbook user_playbook.yaml 
ansible-playbook 
ll
clear
ansible-playbook user_playbook.yaml 
cd ../10
cd ../11
ll
clear
cd ../14
ll
cat ssh_key_playbook.yaml 
ansible-playbook ssh_key_playbook.yaml 
cd ../16
ll
cat directory_sequence.yaml 
ansible-playbook directory_sequence.yaml 
cd ../20
ll
cat random_choice_playbook.yaml 
cd diveintoansible/
cd Ansible\ Playbooks\,\ Deep\ Dive/
cd Asynchronous\,\ Serial\,\ Parallel/
cd 01
time ansible-playbook slow_playbook.yaml 
clear
cd ../02
cat slow_playbook.yaml 
time ansible-playbook slow_playbook.yaml 
cd ../03
clear
ll
time ansible-playbook slow_playbook.yaml 
cd ../04
ll
clear
time ansible-playbook slow_playbook.yaml 
ll
cat slow_playbook.yaml 
cd ../10
ll
clear
ll
cat slow_playbook.yaml 
cd ../11
ll
cat serial_playbook.yaml 
ansible-playbook serial_playbook.yaml 
clear
ll
cat serial_playbook.yaml 
cd ../12
ll
cat serial_playbook.yaml 
ansible-playbook serial_playbook.yaml 
cd ../13
cl;ear
clear
ll
cat serial_playbook.yaml 
ansible-playbook serial_playbook.yaml 
cd ../15
clear
time ansible-playbook random_slow_playbook.yaml 
cd ..
Task\ Delegation/0
cd Task\ Delegation/
cd 01
ll
cat tcpwrappers_ubuntu3_playbook.yaml 
ansible-playbook tcpwrappers_ubuntu3_playbook.yaml 
cd ..02
cat tcpwrappers_ubuntu3_playbook.yaml 
ansible-playbook tcpwrappers_ubuntu3_playbook.yaml 
cd ../02
cat tcpwrappers_ubuntu3_playbook.yaml 
ansible-playbook tcpwrappers_ubuntu3_playbook.yaml 
cat tcpwrappers_ubuntu3_playbook.yaml 
cd ..03
cd ../03
ll
clear
ll
cat tcpwrappers_ubuntu3_playbook.yaml 
ll
ansible-playbook tcpwrappers_ubuntu3_playbook.yaml 
cd ../04
ll
cat tcpwrappers_ubuntu3_playbook.yaml 
ansible-playbook tcpwrappers_ubuntu3_playbook.yaml 
cd ../05
clear
ansible-playbook tcpwrappers_ubuntu3_playbook.yaml 
cd ..
cd Magic\ Variables/
cd 01
cat templates/dump_variables 
ll
cat dump_vars_playbook.yaml 
ll
ansible-playbook dump_vars_playbook.yaml 
ll
cd captured_variables/
ll
cat centos1
cd 01
cd ..
cd Blocks/
ll
cd 01
ll
cat blocks_playbook.yaml 
ansible-playbook blocks_playbook.yaml 
cd ../02
ll
cat blocks_playbook.yaml 
ansible-playbook blocks_playbook.yaml 
cd ..
cd ../Vault/
cd 01
cat group_vars/ubuntu 
ansible ubuntu -m ping -o
ansible-vault encrpt_string --ask-vault-pass --name 'ansible_become_pass' 'password' 
ansible-vault encrypt_string --ask-vault-pass --name 'ansible_become_pass' 'password' 
nano group_vars/ubuntu 
ansible --ask-vault-pass ubuntu -m ping -0
ansible --ask-vault-pass ubuntu -m ping -o
cd ./02
cd ../02
cat external_vault_vars.yaml 
ansible-vault encrypt external_vault_vars.yaml 
cat external_vault_vars.yaml 
ansible-playbook --ask-vault-pass vault_playbook.yaml 
ansible-vault decrypt external_vault_vars.yaml 
cat external_vault_vars.yaml 
ansible-vault encrypt external_vault_vars.yaml 
ansible-vault rekey external_vault_vars.yaml 
ansible-vault view  external_vault_vars.yaml 
clear
echo vaultpass > password_file
ansible-vault view --vault-password-file password_file external_vault_vars.yaml 
ansible-vault  view --vault-id @prompt external_vault_vars.yaml 
ansible-vault  view --vault-id @password_file external_vault_vars.yaml 
rm password_file
ansible-vault decrypt external_vault_vars.yaml 
ansible-vault encrypt --vault-id vars@prompt external_vault_vars.yaml 
cat external_vault_vars.yaml 
ansible-vault encrypt_string --vault-id ssh@prompt --name 'ansible_become_pass' 'password'
nano group_vars/ubuntu 
ansible-playbook  --vault-id vars@prompt --vault-id ssh@prompt vault_playbook.yaml 
ansible-vault encrypt --vault-id playbook@prompt vault_playbook.yaml 
cat vault_playbook.yaml 
ansible-playbook --vault-id vars@prompt --vault-id ssh@prompt --vault-id playbook@prompt vault_playbook.yaml 
cd diveintoansible/
cd Structuring\ Ansible\ Playbooks/
cd Using\ Include\ and\ Import/
cd 01
ll
cat include_tasks_playbook.yaml 
cat play1_task2.yaml 
clear
ansible-playbook include_tasks_playbook.yaml 
cd ../02
ll
ansible-playbook import_tasks_playbook.yaml 
cd ../03
ll
cat include_import_tasks_playbook.yaml 
cd ../04
ll
cat import_playbook.yaml 
cd ..
cd Using\ Tags/
cd 01
ll
cat nginx_playbook.yaml 
clear
ansible-playbook nginx_playbook.yaml --tags "install-epel"
ll
cat nginx_playbook.yaml 
ansible-playbook nginx_playbook.yaml --skip-tags "deploy-app"
cd ../02
ll
cat nginx_playbook.yaml 
cd ../03
ll
cat nginx_playbook.yaml 
cd ../04
ll
cat nginx_playbook.yaml 
cd ../05
cat include_
cat include_import_playbook.yaml 
clear
cd ..
cd Using Using\ Roles/
cd 01
cd Using\ Roles/
cd 01
find .
cd ../03
ll
ansible-galaxy init nginx
find .
cd ..05
cd ../05
ll
ansible-galaxy init webapp
ll
cd ../06
ll
cat webapp/defaults/main.yml 
cd ../03
ll
ansible-galaxy init jubril
ll
cd jubril
ll
cd /etc/ansible
ll
history
485!
history
ll
docker
cd
cd diveintoansible/
cd Using\ Ansible\ with\ Cloud\ Services\ and\ Containers/
cd 04
cd AWS\ with\ Ansible/
cd 04
ll
cat ec2_playbook.yaml 
ll
cat ansible.cfg 
cd inventory/
ll
cat ec2.py 
cd ..
cd Docker\ with\ Ansible/
cd 01
ping docker;
cat install_docker.sh 
bash -x install_docker.sh 
clear
cat envdocker
source envdocker
docker ps -a
cat docker_playbook.yaml 
ansible-playbook docker_playbook.yaml 
docker images
cat examples.txt 
docker image sls
docker image ls
docker run --rm -it wernight/funbox cmatrix
ocker run --rm -it wernight/funbox nyancat
docker run --rm -it wernight/funbox nyancat
cat examples.txt 
docker run --rm -it wernight/funbox asciiquarium
cd ../02
ll
cat docker_playbook.yaml 
ansible-playbook docker_playbook.yaml 
docker ps
clear
cd ../03
ansible-playbook docker_playbook.yaml 
docker images
cat docker_playbook.yaml 
ansible-playbook docker_playbook.yaml 
cd /shared
ll
cd ..
ll
sudo chmod -R 777 shared/
cd -
cd
ll
cd diveintoansible/
cd Using\ Ansible\ with\ Cloud\ Services\ and\ Containers/
cd Docker\ with\ Ansible/
cd 03
ll
ansible-playbook docker_playbook.yaml 
docker images
cd ../04
ll
ansible-playbook docker_playbook.yaml 
docker images
cd ../05
ll
ansible-playbook docker_playbook.yaml 
cd diveintoansible/
cd Creating\ Modules\ and\ Plugins/
cd Creating\ 
cd Creating\ Modules
cd 01
cd
git clone https://github.com/ansible/ansible.git
ll
cd ansible/
ll
cd
ll
cd diveintoansible/
cd Creating\ Modules\ and\ Plugins/
cd Creating\ 
cd Creating\ Modules/
cd 01
ll
cleae
clear
ll
cat icmp.sh 
~/ansible/hacking/test-module -m ~/ansible/lib/ansible/modules/command.py -a hostname
python 
