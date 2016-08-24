{% from 'flavours/basic/packages.ks.tpl' import packages as basic %}

{% set packages %}
{{ basic }}

# Core
f{{ fedora_version  }}-backgrounds-extras-gnome
budgie-desktop
lightdm-gtk
light-locker
network-manager-applet
arc-theme

# System
firewall-config
policycoreutils-gui
setroubleshoot

# Gnome
gnome-software
gnome-terminal
gnome-characters
gnome-calculator
gnome-clocks
gnome-color-manager
gnome-system-monitor
gnome-disk-utility
gnome-screenshot
gnome-power-manager
gnome-todo
polkit-gnome
dconf-editor
seahorse

# Utility
chromium
fedora-user-agent-chrome
epiphany
geary
california
transmission-gtk
feedreader
corebird
eog
file-roller
evince
scudcloud

# Nautilus extensions
nautilus-extensions
gnome-terminal-nautilus
evince-nautilus
file-roller-nautilus
totem-nautilus

# Multimedia
totem
rhythmbox

# Gstreamer
gstreamer1-vaapi
gstreamer1-libav
gstreamer1-plugins-good
gstreamer1-plugins-good-extras
gstreamer1-plugins-bad-free
gstreamer1-plugins-bad-freeworld
gstreamer1-plugins-bad-nonfree
gstreamer1-plugins-ugly
{% endset %}
