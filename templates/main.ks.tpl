#
# Custom Anaconda installation file (Flavour: {{ installation_flavour }})
#

rootpw --lock
bootloader --extlinux
firstboot --disabled
selinux --enforcing
network --hostname={{ hostname }}.local
firewall --enabled --service=dhcpv6-client,mdns,ntp,samba-client,transmission-client
services --disabled=cups,smb,nmb,network,sshd --enabled=avahi-daemon,NetworkManager

# Do not enforce password strength
%anaconda
pwpolicy user --notstrict
pwpolicy root --notstrict
%end

{% include 'includes/repos-anaconda.ks.tpl' %}

{% include 'flavours/%s.ks.tpl'|format(installation_flavour) %}

{% include 'includes/repos-system.ks.tpl' %}
{% include 'includes/post.ks.tpl' %}

