#!/usr/bin/env bash

for word in $(cat myhexdict.txt); do 

wordexists=$(aspell -d en dump master | aspell -l en expand | grep ^${word}$)


if [ "$?" -eq "0" ]; then
    echo $word >> ipv6enwords.txt
fi

done
