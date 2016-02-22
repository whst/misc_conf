#!/bin/bash
# Author: Wang Hsutung
# Date: 2015/09/18
# Locale: Wuhan, Hubei
# Email: hsu[AT]whu.edu.cn

cp ~/.zshrc .
cp ~/.bashrc .
cp ~/.bash_aliases .
cp ~/.ghci .

cp -R ~/.kde/share/apps/konsole .
cp -R ~/.config/terminator .
# Many files
cp -R ~/.kde/share/config .

#git add ./.zshrc ./.bashrc ./.bash_aliases ./.kde ./.config
#git push origin master
