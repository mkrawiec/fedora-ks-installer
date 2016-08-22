{% from 'flavours/basic/packages.ks.tpl' import packages as basic %}

{% set packages %}
{{ basic }}

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
bluedevil

# KDE apps
kde-print-manager
kde-partitionmanager
ksysguard
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
trojita
neovim-qt
transmission-qt
quiterss
picard
cutemarked
scudcloud

# Multimedia
mpv
mpd
mpdscribble
cantata
{% endset %}
