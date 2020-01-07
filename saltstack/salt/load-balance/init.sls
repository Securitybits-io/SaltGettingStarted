nginx:
  pkg.installed: []

nging-running:
  service.running:
    - name: nginx
      watch:
        - file: /etc/nginx/nginx.conf

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://load-balance/nginx.conf
