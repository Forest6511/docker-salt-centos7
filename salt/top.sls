# see. 'pillar_roots' of /etc/salt/master.
base:
  '*':
    - common
    - nettools
  'client1':
    - users
    - apache
    - client1.rbenv