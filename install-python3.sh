#!/bin/bash

sudo yum -y localinstall http://dl.iuscommunity.org/pub/ius/stable/CentOS/7/x86_64/ius-release-1.0-13.ius.centos7.noarch.rpm
sudo yum -y install python34u-{devel,pip,setuptools,pip,wheel,tools}
