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

    # Bootstrap kde sensible defaults
    su -c "git clone git@github.com:mkrawiec/dotfiles.git ~/dotfiles" $user
    su -c "~/dotfiles/kdeconfig.sh" $user
done
%end

