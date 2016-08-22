{% from 'flavours/basic/packages.ks.tpl' import packages as basic %}

{% set packages %}
{{ basic }}

lightdm-gtk
i3-gaps
i3lock
i3blocks
compton
dunst
udiskie
rofi
scrot
network-manager-applet
xdotool
dex-xdg
ImageMagick
xautolock

weechat
ranger
ncmpcpp
htop
ncdu
mutt
calcurse
newsbeuter

termite
apvlv
mpv
polkit-gnome
pavucontrol
feh
lxrandr
viewnior
chromium
qutebrowser
{% endset %}
