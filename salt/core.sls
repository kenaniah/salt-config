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
