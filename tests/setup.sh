#/bin/sh

# Completely remove mysql
#sudo apt-get remove -y --purge mysql-server mysql-client mysql-common
#sudo apt-get autoremove -y
#sudo apt-get autoclean
#sudo rm -rf /var/lib/mysql
#sudo rm -rf /root/.my.cnf

curl https://raw.githubusercontent.com/GetValkyrie/ansible-bootstrap/master/install-ansible.sh 2>/dev/null | /bin/sh
ansible-galaxy install --ignore-errors http://github.com/getvalkyrie/ansible-role-aegir,,getvalkyrie.aegir
target=/etc/ansible/roles/getvalkyrie.valkyrie
if [ ! -e $target ]; then
  ln -s /vagrant/ $target
fi
 
