test_netdata_is_installed:
  testinfra.file:
    - name: /usr/sbin/netdata
    - exists: True
    - is_file: True
