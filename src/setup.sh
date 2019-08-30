#!/bin/bash

echo "Starting Setup"

#Update Ubuntu

echo "Updating Ubuntu"
apt update
apt-get -y upgrade

#Add Commands

echo "Installing commands"
apt-get install -y wget
apt-get install -y vim
apt-get install -y git

#Setup VIM
echo "Setting Up Vim"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim -c PluginInstall -c q -c q

#Setup golang
echo "Setting Up Go"
wget https://dl.google.com/go/go1.12.7.linux-amd64.tar.gz
tar -xvf go1.12.7.linux-amd64.tar.gz
echo "Setting Up Go on local..."
mv go /usr/local
rm go1.12.7.linux-amd64.tar.gz
export GOROOT=/usr/local/go
mkdir $HOME/Projects/
export GOPATH=$HOME/Projects
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
