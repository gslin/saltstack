smokeping:
  pkg:
    - installed

smokeping-General:
  file.managed:
    - name: /etc/smokeping/config.d/General
    - user: root
    - group: root
    - mode: 755
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
