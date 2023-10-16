#!/bin/bash
touch ~/.ssh/config
echo "Host sandbox-iosxe-recomm-1.cisco.com" > ~/.ssh/config
echo "    KexAlgorithms +diffie-hellman-group-exchange-sha1" >> ~/.ssh/config
echo "    HostKeyAlgorithms +ssh-rsa" >> ~/.ssh/config
cd ..
chmod 700 ansible-playbooks/
pip install ansible-pylibssh