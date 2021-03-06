#
unbound:
  pkg:
    - latest

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
