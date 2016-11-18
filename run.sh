#!/usr/local/bin/dumb-init /bin/bash

IPSEC_SECRETS='/etc/ipsec.secrets'
IPSEC_CONF='/etc/ipsec.conf'

################################################
#RIGHT VALUES
################################################

#HUB:
sed -i -e "s@{{RIGHT_HUB_ADDRESS}}@${RIGHT_HUB_ADDRESS}@g" ${IPSEC_SECRETS}
sed -i -e "s@{{RIGHT_HUB_ADDRESS}}@${RIGHT_HUB_ADDRESS}@g" ${IPSEC_CONF}
sed -i -e "s@{{RIGHT_HUB_SUBNET}}@${RIGHT_HUB_SUBNET}@g" ${IPSEC_CONF}
#DEV:
sed -i -e "s@{{RIGHT_DEV_ADDRESS}}@${RIGHT_DEV_ADDRESS}@g" ${IPSEC_SECRETS}
sed -i -e "s@{{RIGHT_DEV_ADDRESS}}@${RIGHT_DEV_ADDRESS}@g" ${IPSEC_CONF}
sed -i -e "s@{{RIGHT_DEV_SUBNET}}@${RIGHT_DEV_SUBNET}@g" ${IPSEC_CONF}
#PROD
sed -i -e "s@{{RIGHT_PROD_ADDRESS}}@${RIGHT_PROD_ADDRESS}@g" ${IPSEC_SECRETS}
sed -i -e "s@{{RIGHT_PROD_ADDRESS}}@${RIGHT_PROD_ADDRESS}@g" ${IPSEC_CONF}
sed -i -e "s@{{RIGHT_PROD_SUBNET}}@${RIGHT_PROD_SUBNET}@g" ${IPSEC_CONF}

################################################
#LEFT VALUES
################################################

sed -i -e "s@{{LEFT_PRIVATE}}@${LEFT_PRIVATE}@g" ${IPSEC_CONF}
sed -i -e "s@{{LEFT_EDGE}}@${LEFT_EDGE}@g" ${IPSEC_CONF}
sed -i -e "s@{{LEFT_SUBNET}}@${LEFT_SUBNET}@g" ${IPSEC_CONF}

################################################
#PSK VALUES
################################################

sed -i -e "s@{{HUB_PSK}}@${HUB_PSK}@g" ${IPSEC_SECRETS}
sed -i -e "s@{{DEV_PSK}}@${DEV_PSK}@g" ${IPSEC_SECRETS}
sed -i -e "s@{{PROD_PSK}}@${PROD_PSK}@g" ${IPSEC_SECRETS}

ipsec start --nofork\
