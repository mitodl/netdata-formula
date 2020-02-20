{% from "netdata/map.jinja" import netdata with context %}

include:
  - .service

install_netdata:
  cmd.script:
    - name: salt://netdata/files/install.sh
    - creates:
      - /usr/sbin/netdata
    - require_in:
      - service: netdata_service_running
