webserver:
  pkg.installed:
    - pkgs:
      - httpd
      - git

httpd:
  service:
    - running
  service:
    - enabled

