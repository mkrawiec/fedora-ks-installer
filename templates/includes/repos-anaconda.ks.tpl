#
# Enable repositories in Anaconda for instalation
#

# Installation source - base repository
url --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-{{ fedora_version }}&arch=$basearch

# RPM Fusion
repo --name=rpmfusion-free --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-{{ fedora_version }}&arch=$basearch
repo --name=rpmfusion-nonfree --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-{{ fedora_version }}&arch=$basearch

{% if fedora_version != 'rawhide' %}
# Install updates during installation
repo --name=updates-released --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f{{ fedora_version }}&arch=$basearch

repo --name=rpmfusion-free-updates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-{{ fedora_version }}&arch=$basearch
repo --name=rpmfusion-nonfree-updates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-{{ fedora_version }}&arch=$basearch
{% endif %}

# Copr repos
repo --name=mkrawiec-home --baseurl=https://copr-be.cloud.fedoraproject.org/results/mkrawiec/home/fedora-{{ fedora_version }}-$basearch/
repo --name=mkrawiec-neovim --baseurl=https://copr-be.cloud.fedoraproject.org/results/mkrawiec/neovim/fedora-{{ fedora_version }}-$basearch/
repo --name=mkrawiec-infinality-ultimate --baseurl=https://copr-be.cloud.fedoraproject.org/results/mkrawiec/infinality-ultimate/fedora-{{ fedora_version }}-$basearch/
repo --name=churchyard-chromium-russianfedora --baseurl=https://copr-be.cloud.fedoraproject.org/results/churchyard/chromium-russianfedora/fedora-{{ fedora_version }}-$basearch/

{% if nvidia_drivers %}
repo --name=fedora-nvidia --baseurl=http://negativo17.org/repos/nvidia/fedora-{{ fedora_version }}/$basearch/
{% endif %}
