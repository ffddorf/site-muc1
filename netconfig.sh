#!/bin/sh

set -x

ip tunnel add tun1 mode gre local 45.151.166.3 remote 178.13.251.85
ip addr add 10.129.0.2/31 dev tun1
ip addr add fdcb:aa6b:5532:2::1/64 dev tun1
ip link set up dev tun1

ip tunnel add tun2 mode gre local 45.151.166.3 remote 178.13.251.114
ip addr add 10.129.0.4/31 dev tun2
ip addr add fdcb:aa6b:5532:3::1/64 dev tun2
ip link set up dev tun2
