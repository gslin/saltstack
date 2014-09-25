#
ufw:
  pkg:
    - latest

ufw-default-deny:
  cmd.run:
    - name: ufw default deny
    - require:
      - pkg: ufw

ufw-enable:
  cmd.run:
    - name: ufw enable
    - require:
      - pkg: ufw

ufw-whitelist:
  cmd.run:
    - name: ufw allow from 114.34.90.16
    - require:
      - pkg: ufw
