{% from "kodi/map.jinja" import kodi with context %}

#save keymap file for onkyo remote i have
kodi_keymap:
  file.managed:
    - name: {{ kodi.keymap_remote_location }}/remote.xml
    - source: {{ kodi.keymap_remote_src }} 
    - require:
      - pkg: kodi_packages