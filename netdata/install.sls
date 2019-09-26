{% from "netdata/map.jinja" import netdata with context %}

include:
  - .service

netdata:
  pkg.installed:
    - pkgs: {{ netdata.pkgs }}
    - require_in:
        - service: netdata_service_running
