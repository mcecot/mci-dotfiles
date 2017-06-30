#!/usr/bin/env bash
mkdir -p ~/.dotfiles/.fonts
pushd ~/.dotfiles/.fonts 
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.0.0/Hack.zip
unzip Hack.zip -d Hack
rm -f Hack.zip
popd 
echo 
echo 
echo "!!Attention!!"
echo "-------------"
echo "you need to open Fontbook and activate the Fonts installed in ~/.dotfiles/.fonts"
echo "(we might automate this process via ansible at a later point)"
echo 
echo 