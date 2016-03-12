{% block xconfig %}xconfig --startxonboot{% endblock %}

#
# Packages provided by this flavour
#

%packages
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
dnf-plugin-system-upgrade
dnf-langpacks


# Repo releases
rpmfusion-free-release
rpmfusion-nonfree-release
infinality-ultimate-repo


# System utils
sed
gawk
tree
psmisc
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
inxi


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
xsel
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
fontawesome-fonts


{% block packages %}
{% endblock %}
%end

{% post 1 %}
# Install Microsoft Fonts
dnf -y install http://sourceforge.net/projects/mscorefonts2/files/rpms/msttcore-fonts-installer-2.2-1.noarch.rpm

dnf -y --allowerasing install neovim-symlinks
dnf -y langinstall {{ langpack }}

for userdir in /home/*/ ; do
    username=$(basename $userdir)

    # Add user to sys group if he is already in wheel group
    if grep -q wheel <<< "$(groups $username)"; then
        gpasswd --add $username sys
    fi

    # Change shell to fish
    chsh -s /usr/bin/fish $username
done
{% endpost %}

