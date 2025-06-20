#!/usr/bin/env bash
sudo apt update
sudo apt install -y golang vim
echo 'set ts=2' > ${HOME}/.vimrc
