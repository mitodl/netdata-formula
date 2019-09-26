{% from "netdata/map.jinja" import netdata with context %}

{% for pkg in netdata.pkgs %}
test_{{pkg}}_is_installed:
  testinfra.package:
    - name: {{ pkg }}
    - is_installed: True
{% endfor %}
