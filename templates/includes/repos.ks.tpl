{% include '../repos/fedora.ks.tpl' %}
{% include '../repos/rpmfusion-updates-testing.ks.tpl' %}
{% include '../repos/infinality-ultimate.ks.tpl' %}
{% include '../repos/coprs.ks.tpl' %}

{% if nvidia_drivers %}
{% include '../repos/negativo17-nvidia.ks.tpl' %}
{% endif %}
