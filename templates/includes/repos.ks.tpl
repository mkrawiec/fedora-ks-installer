# Include repos needed in every installation

{% include 'repos/fedora.ks.tpl' %}

{% include 'repos/infinality-ultimate.ks.tpl' %}

{% if fedora_version|int() < 23|int() %}
{% include 'repos/rpmfusion-release.ks.tpl' %}
{% include 'repos/rpmfusion-updates.ks.tpl' %}
{% else %}
{% include 'repos/rpmfusion-updates-testing.ks.tpl' %}
{% endif %}

{% import 'includes/macros.ks.tpl' as m %}
{{ m.copr('mkrawiec', 'home') }}
{{ m.copr('mkrawiec', 'neovim') }}
{{ m.copr('churchyard', 'chromium-russianfedora') }}
