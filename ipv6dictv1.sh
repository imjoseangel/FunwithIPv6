#!/usr/bin/env bash

for word in $(cat myhexdict.txt); do 

wordexists=$(grep -e ^${word}$ /usr/share/dict/words)

if [ "$?" -eq "0" ]; then
    echo $word >> ipv6enwords.txt
fi

done
