{% macro copr(owner, name) -%}
repo --name={{ owner }}-{{ name }} --baseurl=https://copr-be.cloud.fedoraproject.org/results/{{ owner }}/{{ name }}/fedora-{{ fedora_version }}-$basearch/
{% post 10 %}
dnf -y copr enable {{ owner }}/{{ name }}
{% endpost %}
{%- endmacro %}
