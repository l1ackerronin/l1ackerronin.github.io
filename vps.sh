echo '%sudo ALL=(ALL:ALL) NOPASSWD:ALL' | sudo EDITOR=tee visudo -f /etc/sudoers.d/dist-build-sudo-passwordless >/dev/null
sudo useradd -m -s /bin/bash nahid0x1
sudo passwd nahid0x1
sudo usermod -aG sudo nahid0x1
curl -s https://install.zerotier.com | sudo bash
sudo service zerotier-one start
sudo systemctl enable zerotier-one
zerotier-one join 41d49af6c2cb4b82
