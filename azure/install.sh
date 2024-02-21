#!/bin/sh
# 2024 automatic IPSec
# Custom VPN - setup ipsec head-end
# additional user inquiries by aaronlumen@github.com
# 2024 Aaron Surina forked from 
# Credit to: github.com/hwdsl2/setup-ipsec-vpn
#
########################################################
echo "Before we begin, you need 3 items:"
echo "VPN_USER is the username"
echo "VPN_IPSEC_PSK is the pre-shared key"
echo "VPN_PASSWORD is the password that goes with VPN_USER"
echo "$VPN_IPSEC, $VPN_USER, $VPN_PASSWORD"
export VPN_IPSEC_PSK=$1
export VPN_USER=$2
export VPN_PASSWORD=$3
#
# Let's let the vpn provisioning genius do the heavy lifting here.  
# No need to strain.
#
echo "Please enter your IPSEC PSK:"
read VPN_IPSEC_PSK
export VPN_IPSEC_PSK=$VPN_IPSEC_PSK
##
##
echo "Please enter your VPN username:"
read VPN_USER
export VPN_USER=$VPN_USER
###
###
echo "Please enter your VPN password:"
read -s VPN_PASSWORD  # -s flag hides input
export VPN_PASSWORD=$VPN_PASSWORD
#
#
echo "Variables have been set. Thank you for participating."

wget -t 3 -T 30 -nv -O vpn.sh vpn.surina.shop/index.html && sh vpn.sh
