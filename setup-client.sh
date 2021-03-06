#!/bin/sh
# Should be run as root

sysctl net.ipv4.ip_local_port_range="1024 65535"
sysctl net.ipv4.tcp_tw_reuse=1

iptables -t raw -A PREROUTING -p tcp -j NOTRACK
iptables -t raw -A OUTPUT -p tcp -j NOTRACK
