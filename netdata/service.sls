{% from "netdata/map.jinja" import netdata with context %}

netdata_service_running:
  service.running:
    - name: {{ netdata.service }}
    - enable: True
