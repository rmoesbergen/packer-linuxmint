#!/bin/bash -ux

echo '==> Updating list of repositories'
apt-get -y update

# Remove any pre-installed virtualbox packages
apt-get -y purge virtualbox*

echo '==> Performing dist-upgrade (all packages and kernel)'
aptitude --no-gui -q -f -y full-upgrade
aptitude --no-gui -q -f -y full-upgrade
