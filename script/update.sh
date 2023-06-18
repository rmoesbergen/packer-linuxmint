#!/bin/bash -ux

export DEBIAN_FRONTEND=noninteractive

echo '==> Updating list of repositories'
apt-get -y update

# Remove any pre-installed virtualbox packages
apt-get -y purge virtualbox*
apt-get -y purge libreoffice*
apt-get -y purge firefox

echo '==> Performing dist-upgrade (all packages and kernel)'
aptitude --no-gui -q -f -y full-upgrade
aptitude --no-gui -q -f -y full-upgrade
