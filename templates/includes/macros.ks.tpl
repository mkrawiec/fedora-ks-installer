# Add copr repository to installation sources as well as to installed system
{% macro copr(owner, name) -%}
repo --name={{ owner }}-{{ name }} --baseurl=https://copr-be.cloud.fedoraproject.org/results/{{ owner }}/{{ name }}/fedora-{{ fedora_version }}-$basearch/

{% post 10 %}
dnf -y copr enable {{ owner }}/{{ name }}
{% endpost %}
{%- endmacro %}


# Iterate over user directories in bash scripts; current user is available via $username var
{% macro each_user() -%}
for userdir in /home/*/ ; do
    username=$(basename $userdir)
    {{ caller() }}
done
{%- endmacro %}
