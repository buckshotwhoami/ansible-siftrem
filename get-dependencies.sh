#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

if [ $# != 0 ]; then
rolesdir=$1
else
rolesdir=$(dirname $0)/..
fi

[ ! -d $rolesdir/geerlingguy.java ] && git clone https://github.com/geerlingguy/ansible-role-java.git $rolesdir/geerlingguy.java
[ ! -d $rolesdir/juju4.gift ] && git clone https://github.com/juju4/ansible-gift $rolesdir/juju4.gift
[ ! -d $rolesdir/juju4.sift ] && git clone https://github.com/juju4/ansible-sift $rolesdir/juju4.sift
[ ! -d $rolesdir/juju4.remnux ] && git clone https://github.com/juju4/ansible-remnux $rolesdir/juju4.remnux
[ ! -d $rolesdir/juju4.faup ] && git clone https://github.com/juju4/ansible-faup $rolesdir/juju4.faup
[ ! -d $rolesdir/juju4.vivisect ] && git clone https://github.com/juju4/ansible-vivisect $rolesdir/juju4.vivisect
[ ! -d $rolesdir/juju4.floss ] && git clone https://github.com/juju4/ansible-floss $rolesdir/juju4.floss
