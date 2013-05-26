# Install the remi repository
remi:
  cmd.run:
    - name: rpm -ih http://rpms.famillecollet.com/enterprise/remi-release-6.rpm && yum-config-manager --enable remi
    - unless: test -f /etc/yum.repos.d/remi.repo
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
   - require:
     - cmd: remi

# Install image manipulation libraries
image-manipulation:
  pkg.installed:
    - pkgs:
      - GraphicsMagick
