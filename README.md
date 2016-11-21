# strongswan-docker
A small dockerized strongswan appliance for connecting to AWS vpn gateways

This setup provides peers to all 5 of Chef Delivery's environments in addition to a single hub environment. All configuration variables are provided through env vars. 

##Host Preparation

In order for the host to properly create kernel level ipsec tunnels the following need to be done:

*Execute the following:*

```
Sysctl enable ipv4 accept redirects and send redirects
Sysctl enable ipv4 ip_forward
```

*Add to /etc/modules*

```
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
```

*Reboot Host*

Seriously, reboot it

##Docker container info

Because the host needs kernel level access it must be run in priveleged mode.

Running with `net: host` is easiest but exposing ports 500 and 4500 over udp will also work
