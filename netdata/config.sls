{% from "netdata/map.jinja" import netdata with context %}

include:
  - .install
  - .service

netdata-config:
  file.managed:
    - name: {{ netdata.conf_file }}
    - source: salt://netdata/templates/conf.jinja
    - template: jinja
    - context:
        config: {{ netdata.config | tojson }}
    - makedirs: True
    - watch_in:
      - service: netdata_service_running
    - require:
      - cmd: install_netdata
