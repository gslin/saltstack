smokeping:
  pkg:
    - installed

smokeping-General:
  file.managed:
    - name: /etc/smokeping/config.d/General
    - user: root
    - group: root
    - mode: 755
    - template: jinja
    - source: salt://smokeping/General
    - require:
      - pkg: smokeping

smokeping-Targets:
  file.managed:
    - name: /etc/smokeping/config.d/Targets
    - user: root
    - group: root
    - mode: 755
    - source: salt://smokeping/Targets
    - require:
      - pkg: smokeping

smokeping-restart:
  cmd.run:
    - name: service smokeping restart
    - watch:
      - file: smokeping-General
      - file: smokeping-Targets
