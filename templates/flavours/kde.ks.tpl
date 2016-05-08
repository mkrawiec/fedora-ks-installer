{% extends 'flavours/basic.ks.tpl' %}
{% block xconfig %}xconfig --startxonboot --defaultdesktop=KDE{% endblock %}

#
# Packages provided by this flavour
#

{% block packages %}
# Plasma
f{{ fedora_version  }}-backgrounds-extras-kde
sddm
plasma-desktop
plasma-nm
plasma-pk-updates
kde-style-breeze
kde-gtk-config
breeze-gtk
kwalletmanager5
ksshaskpass
kscreen


# KDE apps
kde-print-manager
kde-partitionmanager
ksysguard
kmix
kcalc
kinfocenter
spectacle
kcolorchooser
muon-discover
konsole5
gwenview
okular
dolphin
dolphin-plugins
kamoso
choqok
ark


# User apps
chromium
neovim-qt
transmission-qt
quiterss
mp3diags


# Multimedia
vlc
phonon-backend-vlc
phonon-qt5-backend-vlc
mpd
mpdscribble
cantata
{% endblock %}

{% post 5 %}
for userdir in /home/*/ ; do
    username=$(basename $userdir)
    su -c "git clone https://github.com/mkrawiec/dotfiles.git ~/dotfiles" $username
    su -c "~/dotfiles/install neovim fish kde mpd" $username
    su -c "~/bin/configure-kde" $username
done
{% endpost %}
