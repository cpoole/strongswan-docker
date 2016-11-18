# strongswan-docker
A small dockerized strongswan appliance for connecting to AWS vpn gateways

On the host:

Sysctl enable ipv4 accept redirects and send redirects
Sysctl enable ipv4 ip_forward

Add to /etc/modules
ah4
ah6
esp4
esp6
xfrm4_tunnel
xfrm6_tunnel
xfrm_user
ip_tunnel
tunnel
tunnel6
xfrm4_mode_tunnel
xfrm6_mode_tunnel
pcrypt
xfrm_ipcomp
deflate
