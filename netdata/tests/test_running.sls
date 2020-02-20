test_netdata_running:
  testinfra.service:
    - name: netdata
    - is_running: True
    - is_enabled: True

test_netdata_listening:
  testinfra.socket:
    - name: tcp://0.0.0.0:19999
    - is_listening: True
