rpm -ihv http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
yum install salt-minion
chkconfig salt-minion on
service salt-minion start