{% block xconfig %}xconfig --startxonboot{% endblock %}

#
# Packages provided by this flavour
#

%packages
# System core
-plymouth*
syslinux-extlinux
kernel
kernel-modules
ca-certificates
memtest86+
deltarpm
fedora-release-workstation
rpmfusion-free-release
rpmfusion-nonfree-release
dnf-plugin-system-upgrade
dnf-langpacks


# System utils
sed
gawk
tree
colordiff
lsof
dos2unix
avahi
nss-mdns
pciutils
usbutils
smartmontools
findutils
xdg-utils
xdg-user-dirs


# Filesystem progs
ntfs-3g
ntfsprogs
btrfs-progs
xfsprogs
dosfstools


# User utils
stow
git
tmux
fish
neovim
cups
samba
samba-client


# File archivers
unar
unrar
p7zip
zip


# X.org
@base-x
cairo-infinality-ultimate
freetype-infinality-ultimate
fontconfig-infinality-ultimate


# Multimedia
alsa-firmware
alsa-utils
pulseaudio
alsa-plugins-pulseaudio
ffmpeg
youtube-dl
livestreamer


# Fonts
open-sans-fonts
liberation-mono-fonts
liberation-sans-fonts
liberation-serif-fonts
google-droid-sans-fonts
google-droid-sans-mono-fonts
google-droid-serif-fonts
dejavu-sans-fonts
dejavu-sans-mono-fonts
dejavu-serif-fonts
iosevka-fonts


{% if nvidia_driver %}
nvidia-driver
{% endif %}

{% block packages %}
{% endblock %}
%end

