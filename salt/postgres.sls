# Install the pgdg repository
pgdg:
  cmd.run:
    - name: rpm -ih http://yum.postgresql.org/9.3/redhat/rhel-6-x86_64/pgdg-centos93-9.3-1.noarch.rpm && yum-config-manager --enable pgdg93
    - unless: test -f /etc/yum.repos.d/pgdg-93-centos.repo
    - require:
      - pkg: core

postgresql-9.3:
  pkg.installed:
    - pkgs:
      - postgresql93
      - postgresql93-contrib
      - postgresql93-server
  service:
    - enabled
