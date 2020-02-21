test_netdata_is_installed:
  testinfra.file:
    - name: /opt/netdata/bin/netdata
    - exists: True
    - is_file: True
