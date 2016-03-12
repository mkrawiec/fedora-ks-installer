# base repository
url --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=fedora-{{ fedora_version }}&arch=$basearch

# updates
repo --name=updates-released --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f{{ fedora_version }}&arch=$basearch
