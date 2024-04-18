#!/bin/zsh

if [[ $# -ne 2 ]]; then
    echo "Usage: $0 host port"
    exit 1
fi

HOST=$1
PORT=$2

set -e

echo "** Ping (ICMP) **"
ping -c 5 "$HOST"
echo "** Traceroute (ICMP) **"
paris-traceroute -q3 -m30 -I "$HOST"
echo "** Traceroute (TCP) **"
paris-traceroute -q3 -m30 -T "-p$PORT" "$HOST"
echo "** Traceroute (UDP) **"
paris-traceroute -q3 -m30 -U "-p$PORT" "$HOST"
echo "** Netcat (TCP Connect) **"
echo "QUIT" | nc -z -w 5 "$HOST" "$PORT"
