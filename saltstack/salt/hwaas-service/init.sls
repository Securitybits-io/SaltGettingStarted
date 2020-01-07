include:
  - hwaas-site

supervisor:
  pkg.installed:
    - require:
      - sls: hwaas-site

ensure-supervisor-running:
  service.running:
    - name: supervisor
    - watch:
      - file: /etc/supervisor/conf.d/hwaas-site.conf
    - require:
      - pkg: supervisor

/etc/supervisor/conf.d/hwaas-site.conf:
  file.managed:
    - source: salt://hwaas-service/files/supervisor.conf
    - require:
      - pkg: supervisor
