#!/bin/sh

cp ~/.bashrc .bashrc
cp ~/.profile .profile
cp -rf ~/.emacs.d ./.emacs.d

echo "Set password for ssh.zip"
cp -rf ~/.ssh .ssh
zip -er ssh.zip .ssh
rm -rf .ssh
echo "Done!"
