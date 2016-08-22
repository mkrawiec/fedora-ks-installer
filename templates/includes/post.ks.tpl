# Install Microsoft Fonts
dnf -y install http://sourceforge.net/projects/mscorefonts2/files/rpms/msttcore-fonts-installer-2.2-1.noarch.rpm

dnf -y --allowerasing install neovim-symlinks
dnf -y langinstall {{ langpack }}

{% call each_user() %}
    # Add user to sys group if he is already in wheel group
    if grep -q wheel <<< "$(groups $username)"; then
        gpasswd --add $username sys
    fi

    # Change shell to fish
    chsh -s /usr/bin/fish $username
{% endcall %}
