FROM ubuntu:16.04

RUN mkdir -p /conf

RUN apt-get update && apt-get install -y \
  libgmp-dev \
  iptables \
  xl2tpd \
  module-init-tools \
  wget \
  strongswan

RUN wget -O /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v1.2.0/dumb-init_1.2.0_amd64
RUN chmod +x /usr/local/bin/dumb-init

# Strongswan Configuration
ADD ipsec.conf /etc/ipsec.conf
ADD ipsec.secrets /etc/ipsec.secrets
ADD strongswan.conf /etc/strongswan.conf

ADD run.sh /run.sh

# The password is later on replaced with a random string
ENV VPN_USER user
ENV VPN_PASSWORD password
ENV VPN_PSK password

VOLUME ["/etc/ipsec.d"]

EXPOSE 4500/udp 500/udp 1701/udp

CMD ["/run.sh"]
