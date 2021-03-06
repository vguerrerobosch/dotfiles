#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Sites

# Personal
git clone git@github.com:vguerrerobosch/vguerrerobosch.com.git $SITES/vguerrerobosch.com
git clone git@github.com:vguerrerobosch/estudifar.git $SITES/estudifar

# Clients
git clone git@gitlab.com:vguerrerobosch/alreves.git $SITES/alreves
git clone git@gitlab.com:vguerrerobosch/bpd.git $SITES/bpd
git clone git@gitlab.com:vguerrerobosch/docsbarcelona.git $SITES/docsbarcelona
git clone git@gitlab.com:vguerrerobosch/lipsa.git $SITES/lipsa
