{% from 'flavours/basic/packages.ks.tpl' import packages as basic %}

{% set packages %}
{{ basic }}

# Core
budgie-desktop
lightdm-gtk3
light-locker
network-manager-applet

# System
system-config-firewall
system-config-printer
policycoreutils-gui
setroubleshoot

# Gnome
gnome-software
gnome-terminal
gnome-terminal-nautilus
gnome-characters
gnome-calculator
gnome-color-manager
gnome-system-monitor
gnome-tweak-tool
gnome-disc-utility
gnome-todo
polkit-gnome
dconf
seahorse

# Utility
chromium
epiphany
geary
california
transmission-gtk
feedreader
corebird
eog
evince
evince-nautilus
scudcloud
nautilus-extensions

# Multimedia
totem
totem-nautilus
rhythmbox
{% endset %}
