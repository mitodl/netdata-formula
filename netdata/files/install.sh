#!/bin/bash

ok_checksum="33ecd20452f569c1d9972bcefdf04692"

curl -s https://my-netdata.io/kickstart-static64.sh > /tmp/kickstart-static64.sh

if [ $? -ne 0 ]; then
    1>&2 echo "Could not download kickstart-static64.sh"
    exit 1
fi

our_checksum="$(md5sum /tmp/kickstart-static64.sh | cut -d ' ' -f 1)"

if [ $our_checksum != $ok_checksum ]; then
    1>&2 echo "kickstart-static64.sh checksum is not correct!"
    exit 1
fi

sh /tmp/kickstart-static64.sh --dont-wait --stable-channel
