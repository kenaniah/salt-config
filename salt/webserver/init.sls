webserver:
  pkg.installed:
    - pkgs:
      - httpd
      - git
      - mod_ssl

httpd:
  service:
    - enabled

