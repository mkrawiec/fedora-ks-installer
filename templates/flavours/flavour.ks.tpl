{% from 'flavours/%s/packages.ks.tpl'|format(installation_flavour) import packages %}
{% from 'flavours/%s/settings.ks.tpl'|format(installation_flavour) import xconfig, extra_coprs, stow_dotfiles, flavour_post %}

{% for copr_data in extra_coprs %}
    {{ copr(*copr_data) }}
{% endfor %}

# Configure graphical/text interface
{{ xconfig }}

# Install flavour's packages
%packages
{{ packages }}
%end

{% post 1 %}
# Run generic post script
{% include 'includes/post.ks.tpl' %}
{% endpost %}

{% post 5 %}
# Run post scripts specific to the flavour
{{ flavour_post }}

{% call each_user() %}
    su -c "git clone https://github.com/mkrawiec/dotfiles.git ~/dotfiles" $username
    su -c "~/dotfiles/install {{ dotfiles }}" $username
{% endcall %}
{% endpost %}
