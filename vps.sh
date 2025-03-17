#!/bin/bash

echo '%sudo ALL=(ALL:ALL) NOPASSWD:ALL' | sudo EDITOR=tee visudo -f /etc/sudoers.d/dist-build-sudo-passwordless >/dev/null


if id "nahid0x1" &>/dev/null; then
    echo 'nahid0x1' Skip"
else
    sudo useradd -m -s /bin/bash nahid0x1
    sudo usermod -aG sudo nahid0x1
fi

if ! command -v zerotier-cli &>/dev/null; then
    curl -s https://install.zerotier.com | sudo bash
fi


if [ -f /usr/sbin/zerotier-one ]; then
	sudo service zerotier-one start
	sudo systemctl enable zerotier-one
	zerotier-cli join 41d49af6c2cb4b82
fi
