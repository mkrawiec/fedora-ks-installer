repo --name=fedora-nvidia --baseurl=http://negativo17.org/repos/nvidia/fedora-{{ fedora_version }}/$basearch/

{% post 10 %}
dnf -y config-manager --add-repo=http://negativo17.org/repos/fedora-nvidia.repo
{% endpost %}
