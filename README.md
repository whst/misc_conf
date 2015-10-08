`git clone https://github.com/whst/miscellaconf.git`

# KDE 4 配置恢复
```
mv ./config ~/.kde/share
```

# Zsh 安装
```
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git clone git://github.com/tarruda/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
mv ./.zshrc ~/.zshrc
```

# Konsole 配置恢复
```
mv konsole ~/.kde/share/apps
```

# Terminator 配置恢复
```
mv ./terminator ~/.config
```
Note: Powerline 字体可以通过 `git clone https://github.com/powerline/fonts.git` 取得
