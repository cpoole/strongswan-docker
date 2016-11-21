#!/usr/local/bin/dumb-init /bin/bash

IPSEC_SECRETS='/etc/ipsec.secrets.tmpl'
IPSEC_CONF='/etc/ipsec.conf.tmpl'

envsubst < $IPSEC_CONF > /etc/ipsec.conf
envsubst < $IPSEC_SECRETS > /etc/ipsec.secrets

ipsec start --nofork\
