#!/bin/sh
set -ue

[ $# -lt 3 ] && { echo "Usage: tun.sh <lockfile.pid> <user@remote.host> -R remote:2222:localhost:22"; exit 1; }
pid=$1; shift
server=$1; shift

# check if lockfile has running process in it. exit if already running
test -s $pid && kill -0 `<$pid` 2>/dev/null && exit 0

# lock with new PID
echo $$ > "$pid"

# open SSH port tunneling
ssh $* \
    -2 -N -T \
    -o ExitOnForwardFailure=yes \
    -o StrictHostKeyChecking=no \
    -o BatchMode=yes \
    -o ServerAliveInterval=15 \
    -o TCPKeepAlive=yes \
    ${server}

