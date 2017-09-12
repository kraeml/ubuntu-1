#!/usr/bin/env bash

set -eux

# Sample custom configuration script - add your own commands here
# to add some additional commands for your environment
#
# For example:
# yum install -y curl wget git tmux firefox xvfb
locale-gen de_DE.UTF-8
update-locale LANG=de_DE.UTF-8
update-locale LANGUAGE=de
apt-get update
apt-get install --yes language-pack-de manpages-de
apt-get install --yes python3-pip python3-virtualenv libffi-dev libssl-dev cowsay sshpass python3-dev
apt-get install --yes lxc openvswitch-switch bridge-utils debootstrap lvm2 btrfs-tools
apt-get install --yes dev-utils build-essential aclocal automake pkg-config git

# apt-get install --yes python3-jinja2 python3-paramiko python3-yaml python3-httplib2
# apt-get install --yes python3-lxc python3-flask
pip3 install -U ansible
pip3 install -U flask feedparser pymysql dateparser flask-login Flask-WTF pymongo
pip3 install -U libvirt-python
lxc-create -n dummy -t ubuntu
lxc-destroy -n dummy
lxc-create -n dummy -t debian
lxc-destroy -n dummy
lxc-create -n dummy -t alpine
lxc-destroy -n dummy
lxc-create -n dummy -t archlinux
lxc-destroy -n dummy
lxc-create -n dummy -t centos
lxc-destroy -n dummy
lxc-create -n dummy -t fedora
lxc-destroy -n dummy
lxc-create -n dummy -t opensuse
lxc-destroy -n dummy
