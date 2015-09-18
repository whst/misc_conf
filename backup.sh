#!/bin/bash
# Author: Wang Hsutung
# Date: 2015/09/18
# Locale: Wuhan, Hubei
# Email: hsu[AT]whu.edu.cn

cp ~/.zshrc .
cp ~/.bashrc .
cp ~/.bash_aliases .

cp -R ~/.kde/share/apps/konsole .
cp -R ~/.config/terminator .
# Much file
cp -R ~/.kde/share/config .

git push -u origin master
