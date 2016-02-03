# free
repo --name=rpmfusion-free --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=free-fedora-updates-testing-{{ fedora_version }}&arch=$basearch

# non-free
repo --name=rpmfusion-nonfree --mirrorlist=http://mirrors.rpmfusion.org/mirrorlist?repo=nonfree-fedora-updates-testing-{{ fedora_version }}&arch=$basearch

