# Install the remi repository
remi:
  cmd.run:
    - name: rpm -ih http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && yum-config-manager --enable remi
    - unless: test -f /etc/yum.repos.d/remi.repo
    - require:
      - pkg: core

# Install the rpmforge repository
rpmforge:
  cmd.run:
    - name: rpm -ih http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.x86_64.rpm && yum-config-manager --enable rpmforge
    - unless: test -f /etc/yum.repos.d/rpmforge.repo
    - require:
      - pkg: core

# Install PHP
php:
  pkg.installed:
   - pkgs:
     - php
     - php-bcmath
     - php-intl
     - php-mbstring
     - php-mcrypt
     - php-mysql
     - php-pdo
     - php-pecl-gmagick
     - php-pecl-xdebug
     - php-pgsql
     - php-swift-Swift
     - mod_suphp
   - require:
     - cmd: remi
     - cmd: rpmforge

/etc/php.ini:
  file.sed:
    - before: 'Off'
    - after: 'On'
    - limit: '^short_open_tag = '

/etc/php.ini-2:
  file.append:
    - name: /etc/php.ini
    - text: date.timezone = America/Los_Angeles

# Install image manipulation libraries
image-manipulation:
  pkg.installed:
    - pkgs:
      - GraphicsMagick
