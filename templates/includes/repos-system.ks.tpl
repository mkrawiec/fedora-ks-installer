#
# Enable additional repositories on installed system
#

%post --erroronfail
dnf -y copr enable mkrawiec/home
dnf -y copr enable mkrawiec/neovim
dnf -y copr enable churchyard/chromium-russianfedora

dnf -y config-manager --add-repo=http://download.opensuse.org/repositories/home:/mkrwc:/infinality-ultimate-fedora/Fedora_$(rpm -E %fedora)/home:mkrwc:infinality-ultimate-fedora.repo

{% if nvidia_drivers %}
dnf -y config-manager --add-repo=http://negativo17.org/repos/fedora-nvidia.repo
{% endif %}
%end

