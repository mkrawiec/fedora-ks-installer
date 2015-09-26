#
# Enable additional repositories on installed system
#

%post --erroronfail
dnf -y copr enable mkrawiec/home
dnf -y copr enable mkrawiec/neovim
dnf -y copr enable mkrawiec/infinality-ultimate
dnf -y copr enable churchyard/chromium-russianfedora

{% if nvidia_drivers %}
dnf -y config-manager --add-repo=http://negativo17.org/repos/fedora-nvidia.repo
{% endif %}
%end

