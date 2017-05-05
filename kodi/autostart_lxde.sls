include:
  - kodi

#save .desktop file in autostart folder
kodi_autostart_config:
  file.managed:
    - name: /etc/xdg/autostart/kodi.desktop 
    - source: salt://kodi/files/kodi.desktop 
    - template: jinja
    - require:
      - sls: kodi