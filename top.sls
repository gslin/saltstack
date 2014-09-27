#
base:
  '*':
    - core
  'vps-gv-*':
    - smokeping
  'os:Ubuntu':
    - match: grain
    - ubuntu
