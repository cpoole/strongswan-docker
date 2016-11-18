#!/bin/sh
# Script to check Required Kernel Modules for strongSwan

grep CONFIG_XFRM_USER /boot/config-`uname -r`
grep CONFIG_NET_KEY /boot/config-`uname -r`
grep CONFIG_INET /boot/config-`uname -r`
grep CONFIG_IP_ADVANCED_ROUTER /boot/config-`uname -r`
grep CONFIG_IP_MULTIPLE_TABLES /boot/config-`uname -r`
grep CONFIG_INET_AH /boot/config-`uname -r`
grep CONFIG_INET_ESP /boot/config-`uname -r`
grep CONFIG_INET_IPCOMP /boot/config-`uname -r`
grep CONFIG_INET_XFRM_MODE_TRANSPORT /boot/config-`uname -r`
grep CONFIG_INET_XFRM_MODE_TUNNEL /boot/config-`uname -r`
grep CONFIG_INET_XFRM_MODE_BEET /boot/config-`uname -r`
grep CONFIG_IPV6 /boot/config-`uname -r`
grep CONFIG_INET6_AH /boot/config-`uname -r`
grep CONFIG_INET6_ESP /boot/config-`uname -r`
grep CONFIG_INET6_IPCOMP /boot/config-`uname -r`
grep CONFIG_INET6_XFRM_MODE_TRANSPORT /boot/config-`uname -r`
grep CONFIG_INET6_XFRM_MODE_TUNNEL /boot/config-`uname -r`
grep CONFIG_INET6_XFRM_MODE_BEET /boot/config-`uname -r`
grep CONFIG_IPV6_MULTIPLE_TABLES /boot/config-`uname -r`
grep CONFIG_NETFILTER /boot/config-`uname -r`
grep CONFIG_NETFILTER_XTABLES /boot/config-`uname -r`
grep CONFIG_NETFILTER_XT_MATCH_POLICY /boot/config-`uname -r`
