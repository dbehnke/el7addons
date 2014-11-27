#!/bin/bash

VERSION=1.3.2
REV=3

downloadurl=http://cbs.centos.org/kojifiles/packages/docker/${VERSION}/${REV}.el7.centos/x86_64/docker-${VERSION}-${REV}.el7.centos.x86_64.rpm

rm -r -f pkgtemp
mkdir pkgtemp
cd pkgtemp
wget ${downloadurl}
sudo yum -y localinstall *.rpm
