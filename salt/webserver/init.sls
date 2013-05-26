webserver:
  pkg.installed:
    - pkgs:
      - httpd
      - git
      - mod_ssl

httpd:
  service:
    - running
  service:
    - enabled

