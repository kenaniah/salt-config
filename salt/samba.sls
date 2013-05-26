samba:
  pkg.installed:
    - pkgs:
      - samba

smb:
  service:
    - enabled
  service:
    - running
