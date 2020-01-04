#!/bin/sh
printf "Content-type: text/plain\n\n"

printf "PATH_INFO    [%s]\n" $PATH_INFO
printf "QUERY_STRING [%s]\n" $QUERY_STRING

printf hello GNUnet

gnunet-core
gnunet-arm -I

