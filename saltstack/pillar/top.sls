base:
  '*':
    - common
  'nginx':
    - override
  'roles:load-balancing-web':
    - match: grain
    - hwaas-ssl
  'roles:hwaas-web':
    - match: grain
    - hwaas-web-mine
