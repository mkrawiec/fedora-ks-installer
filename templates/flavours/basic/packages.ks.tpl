{% set packages %}
# System core
syslinux-extlinux
kernel
kernel-modules
ca-certificates
memtest86+
deltarpm
rpmconf
NetworkManager-wifi
fedora-release-workstation
python3-dnf-plugin-system-upgrade
python3-dnf-plugin-versionlock

# Repo releases
rpmfusion-free-release
rpmfusion-nonfree-release

# System utils
sed
gawk
the_silver_searcher
tree
psmisc
colordiff
lsof
dos2unix
avahi
nss-mdns
sysfsutils
pciutils
usbutils
smartmontools
findutils
xdg-utils
xdg-user-dirs
screenfetch
inxi
iotop

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
#unrar
p7zip
zip

# X.org
@base-x
-xorg-x11-drv-synaptics
-xorg-x11-drv-evdev
xorg-x11-drv-libinput
xsel

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
fontawesome-fonts
{% endset %}
