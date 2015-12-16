#
# Enable repositories in Anaconda for instalation
#

# Fedora base
url --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-{{ fedora_version }}&arch=$basearch

# Fedora updates
repo --name=updates-released --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f{{ fedora_version }}&arch=$basearch

# RPMFusion free
repo --name=rpmfusion-free --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-{{ fedora_version }}&arch=$basearch

# RPMFusion non-free
repo --name=rpmfusion-nonfree --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-{{ fedora_version }}&arch=$basearch

# FIXME not released yet
# RPMFusion updates free
#repo --name=rpmfusion-free-updates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-released-{{ fedora_version }}&arch=$basearch

# RPMFusion updates non-free
#repo --name=rpmfusion-nonfree-updates --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-released-{{ fedora_version }}&arch=$basearch

# Chromium
repo --name=chromium-stable --baseurl=https://repos.fedorapeople.org/repos/spot/chromium-stable/fedora-{{ fedora_version  }}/$basearch/

# Infinality Ultimate
repo --name=infinality-ultimate --baseurl=http://rpm.danielrenninghoff.com/fedora/{{ fedora_version  }}/noarch/
repo --name=infinality-ultimate-noarch --baseurl=http://rpm.danielrenninghoff.com/fedora/{{ fedora_version }}/$basearch/

# Copr mkrawiec/home
repo --name=mkrawiec-home --baseurl=https://copr-be.cloud.fedoraproject.org/results/mkrawiec/home/fedora-{{ fedora_version }}-$basearch/

# Copr mkrawiec/neovim
repo --name=mkrawiec-neovim --baseurl=https://copr-be.cloud.fedoraproject.org/results/mkrawiec/neovim/fedora-{{ fedora_version }}-$basearch/

{% if nvidia_drivers %}
repo --name=fedora-nvidia --baseurl=http://negativo17.org/repos/nvidia/fedora-{{ fedora_version }}/$basearch/
{% endif %}
