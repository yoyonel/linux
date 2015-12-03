#!/bin/sh

exec corkscrew proxy.ign.fr 3128 $*

# <name_of_proxy_server> and <port> are the ip address and port of the server
# e.g. exec corkscrew 192.168.0.1 808 $*
