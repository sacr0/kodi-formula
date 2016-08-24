{% from "kodi/map.jinja" import kodi with context %}
kodi_packages:
  pkg.installed:
    - pkgs:
      {%- for pkg in kodi.pkgs %}
      - {{ pkg }}
      {%- endfor %}

