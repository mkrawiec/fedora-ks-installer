{% extends 'flavours/basic.ks.tpl' %}
{% block xconfig %}xconfig --startxonboot --defaultdesktop=KDE{% endblock %}

#
# Packages provided by this flavour
#

{% block packages %}
# Plasma
sddm
plasma-desktop
plasma-nm
plasma-pk-updates
kde-style-breeze
kde-gtk-config
breeze-gtk
kwalletmanager5
ksshaskpass


# KDE apps
kde-print-manager
kde-partitionmanager
ksysguard
kmix
kcalc
ksnapshot
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
#baka-mplayer
mpd
mpdscribble
cantata
{% endblock %}

