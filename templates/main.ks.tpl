#
# Custom Anaconda installation file (Flavour: {{ installation_flavour }})
#

{% from 'includes/macros.ks.tpl' import copr, each_user with context %}

rootpw --lock
{% if bootloader_type == 'extlinux' -%}
bootloader --extlinux
{% endif %}
firstboot --disabled
selinux --disabled
network --hostname={{ hostname }}.local
firewall --enabled --service=dhcpv6-client,mdns,ntp,samba,samba-client,transmission-client
services --disabled=cups,smb,nmb,network,sshd --enabled=avahi-daemon,NetworkManager
timezone --utc {{ timezone }}

# Do not enforce password strength
%anaconda
pwpolicy user --notstrict
pwpolicy root --notstrict
%end

{% include 'includes/repos.ks.tpl' %}
{% include 'flavours/flavour.ks.tpl' %}

%post --erroronfail
{% renderpost %}
%end
