#!/bin/bash

# Instalando o Node
if ! type node > /dev/null 2>&1; then
  echo "instalando Node"
  curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
  sudo apt install -y nodejs

  node -v
  npm -v
fi

# Instalando o awscli
if ! type aws > /dev/null 2>&1; then
  echo "instalando awscli"
  pip3 install awscli --upgrade --user
fi

# Instalanado o Slack
if ! type slack > /dev/null 2>&1; then
  echo "instalando o Slack Desktop"
  wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb
  sudo apt --fix-broken install
  sudo dpkg -i slack-desktop-4.0.2-amd64.deb
  rm -rf slack-desktop-4.0.2-amd64.deb
fi

echo "OK"