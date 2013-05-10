rpm -ihv http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
yum install salt-minion -y
chkconfig salt-minion on
service salt-minion start