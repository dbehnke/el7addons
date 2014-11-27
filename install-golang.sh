#!/bin/bash

GOVERSION=1.3.3
REV=3
PKG_PREFIX=http://cbs.centos.org/kojifiles/packages/golang/${GOVERSION}/${REV}.el7.centos
main=(golang-${GOVERSION}-${REV}.el7.centos.x86_64 golang-pkg-bin-linux-amd64-${GOVERSION}-${REV}.el7.centos.x86_64)
pkgs=(darwin-386 darwin-amd64 linux-386 linux-amd64 windows-386 windows-amd64)
extra=(src vim)

rm -r -f pkgtemp
mkdir pkgtemp
cd pkgtemp

for item in ${main[*]}
do
  downloadurl=${PKG_PREFIX}/x86_64/${item}.rpm
  wget ${downloadurl}
done

for item in ${pkgs[*]}
do
  downloadurl=${PKG_PREFIX}/noarch/golang-pkg-${item}-${GOVERSION}-${REV}.el7.centos.noarch.rpm
  wget ${downloadurl}
done

for item in ${extra[*]}
do
  downloadurl=${PKG_PREFIX}/noarch/golang-${item}-${GOVERSION}-${REV}.el7.centos.noarch.rpm
  wget ${downloadurl}
done

sudo yum -y localinstall *.rpm
