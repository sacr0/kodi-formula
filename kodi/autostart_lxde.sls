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

kodi_extra_startmenu:
  file.managed:
    - name:  /usr/share/applications/Kodi_HDaudio.desktop 
    - source: salt://kodi/files/kodi_startmenu.desktop 
    - template: jinja
    - require:
      - sls: kodi