`git clone https://github.com/whst/miscellaconf.git`

# KDE 4 配置恢复
```
mv ./config ~/.kde/share
```

# Zsh 安装
```
sudo apt-get install zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# 自动补全插件
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# 语法高亮插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# 启用 256 色
git clone https://github.com/chrissicool/zsh-256color $ZSH_CUSTOM/plugins/zsh-256color
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
