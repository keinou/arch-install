#!/usr/bin/env bash
set -e

sudo pacman -Sy git ansible yay --noconfirm

ansible-playbook ansible/initial-configure.yaml

ansible-playbook ansible/customization.yaml

sudo cp -r assets/sddm/Ant-Dark /usr/share/sddm/themes
