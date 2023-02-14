#!/usr/bin/env bash
set -e

loadkeys us

if [ ! -d "/sys/firmware/efi/efivars" ]; then
  echo "Nao esta definido como UEFI! Verifique sua Bios!"
  exit 1
fi

curl -sL https://git.io/JeaH6 | bash
cp conf/alis.conf ./alis.conf
cp conf/alis-packages.conf ./alis-packages.conf

./alis.sh