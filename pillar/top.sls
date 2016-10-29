# see /etc/salt/master
# pillar_roots is commented out, why this directory it enabled.
base:
  '*':
    - users
    - pkg