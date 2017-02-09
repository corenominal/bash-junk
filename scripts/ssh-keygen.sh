#!/bin/bash

HOST=$(hostname)
CONFIG=~/.ssh/config

echo "generating ssh key"
echo "=================="

# Generate the key
#=================
ssh-keygen -t rsa -b 4096 -C "corenominal@${HOST}"

# Set-up a basic ssh config file
#===============================
if [ ! -f ${CONFIG} ]; then
    touch ${CONFIG}
    echo "* Creating basic ssh config..."
    echo "##EXAMPLE" > ${CONFIG}
    echo "#host foo" >> ${CONFIG}
    echo "#hostname foo.corenominal.org" >> ${CONFIG}
    echo "#user corenominal" >> ${CONFIG}
    echo "" >> ${CONFIG}
    echo "host *" >> ${CONFIG}
    echo "StrictHostKeyChecking yes" >> ${CONFIG}
    echo "ServerAliveInterval 15" >> ${CONFIG}
    echo "VisualHostKey yes" >> ${CONFIG}
    echo "  Done."
fi

echo "Note, use the following command copy key to servers:"
echo "ssh-copy-id user@host"

exit 0
