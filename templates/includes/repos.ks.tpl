# Include repos needed in every installation

{% include '../repos/fedora.ks.tpl' %}
{% include '../repos/infinality-ultimate.ks.tpl' %}

{% if fedora_version < 23 %}
{% include '../repos/rpmfusion-release.ks.tpl' %}
{% include '../repos/rpmfusion-updates.ks.tpl' %}
{% else %}
{% include '../repos/rpmfusion-updates-testing.ks.tpl' %}
{% endif %}

{{ copr('mkrawiec', 'home') }}
{{ copr('mkrawiec', 'neovim') }}
{{ copr('churchyard', 'chromium-russianfedora') }}
