{% include 'repos/fedora.ks.tpl' %}

{% include 'repos/rpmfusion-release.ks.tpl' %}

{% include 'repos/rpmfusion-updates.ks.tpl' %}

{{ copr('mkrawiec', 'home') }}
{{ copr('mkrawiec', 'neovim') }}
