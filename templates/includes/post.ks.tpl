#
# Misc post scripts
#

%post --erroronfail
# Install Microsoft Fonts
dnf -y install http://sourceforge.net/projects/mscorefonts2/files/rpms/msttcore-fonts-installer-2.2-1.noarch.rpm

dnf -y --allowerasing install neovim-symlinks

# Change shell to fish
for user in /home/*/ ; do
    chsh -s /usr/bin/fish $user
done
%end

