#
include:
  - shell

mtr-tiny:
  pkg:
    - installed

ufw:
  pkg:
    - installed

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

unbound:
  pkg:
    - installed

unbound-resolv.conf:
  file.managed:
    - name: /etc/resolv.conf
    - user: root
    - group: root
    - mode: 755
    - contents: |
        nameserver 127.0.0.1
    - require:
      - pkg: unbound
