#!/usr/bin/env bash
set -e

sudo pacman -Sy git ansible --noconfirm

ansible-playbook ansible/initial-configure.yaml