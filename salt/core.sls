core:
  pkg.installed:
    - pkgs:
      - htop
      - mlocate
      - git
      - man
      - nc
      - sysstat
      - chkconfig
  service.dead:
    - names:
      - iptables
      - ip6tables
    - enable: False

yum update -y:
  cron.present:
    - hour: 1
    - minute: 0
