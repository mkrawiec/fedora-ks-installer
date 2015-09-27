#
# Misc post scripts
#

%post --erroronfail
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

    # Bootstrap kde sensible defaults
    su -c "git clone https://github.com/mkrawiec/dotfiles.git ~/dotfiles" $username
    su -c "~/dotfiles/kdeconfig.sh" $username
done
%end

