#!/bin/sh
gnunet-arm -s
echo -n "gnunet-cadet " >> index.html
gnunet-peerinfo -sq >> index.html
echo -n " 1" >> index.html

caddy -port $PORT &
mkfifo p0 p1
while true; do
    gnunet-cadet -o 1 > p0 < p1 &
    ./bot.sh < p0 > p1
done


