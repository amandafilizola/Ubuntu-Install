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
  sudo snap install slack --classic
fi

# Instalanado o Zoom
if ! type zoom > /dev/null 2>&1; then
  echo "instalando o Zoom Desktop"
  wget https://d11yldzmag5yn.cloudfront.net/prod/3.5.385850.0413/zoom_amd64.deb
  sudo gdebi -n zoom_amd64.deb
  rm -rf zoom_amd64.deb

fi

# Instalanado o Yarn
if ! type yarn > /dev/null 2>&1; then
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt update && sudo apt install yarn
fi


# Instalanado o nvm
if ! type nvm > /dev/null 2>&1; then
  wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
fi


# Instalanado o Nodemon
if ! type nodemon > /dev/null 2>&1; then
  sudo npm install -g nodemon
fi

git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.st status

echo "OK"