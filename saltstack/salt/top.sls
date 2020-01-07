base:
  '*':
    - bashrc
    - requirements

  'roles:hwaas-web':
    - match: grain
    - nodejs-package
    - hwaas-service

  'roles:load-balancing-web':
    - match: grain
    - load-balance
