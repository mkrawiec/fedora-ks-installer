{% from 'includes/macros.ks.tpl' import copr with context %}
{{ copr('mkrawiec', 'i3desktop') }}

{% extends 'flavours/basic.ks.tpl' %}
#
# Packages provided by this flavour
#

{% block packages %}
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


apvlv
mpv
polkit-gnome
pavucontrol
feh
lxrandr
viewnior
chromium
{% endblock %}

{% post 5 %}
for userdir in /home/*/ ; do
    username=$(basename $userdir)
    su -c "git clone https://github.com/mkrawiec/dotfiles.git ~/dotfiles" $username
    su -c "~/dotfiles/install neovim fish i3desktop mpd" $username
done
{% endpost %}
