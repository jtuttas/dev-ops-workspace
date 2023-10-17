#!/bin/bash
# Für den Zugriff auf den CSR1000V den Kex und Key Algorithmus kopieren
cp .ssh ~/.ssh -r

#Dem ansible-paybooks Ordner die Rechte für die Gruppe und "alle" entfernen, da es sich um ein "World readable" Ordner handelt
cd ..
chmod 700 ansible-playbooks/

#Die ansible-pylibssh installieren, um per SSH auf Router zugreifen zu können
/usr/local/py-utils/venvs/ansible-core/bin/python -m pip install ansible-pylibssh