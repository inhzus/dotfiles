#!/bin/fish
test -d .config/fusuma || mkdir -p .config/fusuma
cp ~/.config/fusuma/config.yml .config/fusuma/
test -d .ssh || mkdir .ssh
cp ~/.ssh/config .ssh/
cp ~/.gitconfig ~/.vimrc ~/.zshrc .
cp -r ~/scripts/ .
cp -r ~/.i3/ .
cp -r ~/.config/i3status/ .config/
cp -r ~/.config/fish/ .config/
cp -r ~/.config/kitty/ .config/
cp ~/.profile .
cp ~/.makepkg.conf .
test -d .config/fcitx/rime || mkdir -p .config/fcitx/rime
cp ~/.config/fcitx/rime/*.yaml .config/fcitx/rime
test -d .config/nvim || mkdir -p .config/nvim
cp ~/.config/nvim/init.vim ~/.config/nvim/coc-settings.json .config/nvim/
cp -r ~/.config/alacritty/ .config/
test -d .config/ranger || mkdir -p .config/ranger
cp ~/.config/ranger/rifle.conf .config/ranger
cp -r ~/.config/polybar/ .config/
cp -r ~/.config/dunst/ .config/
test -d usr/share/alsa || mkdir -p usr/share/alsa/
cp /usr/share/alsa/alsa.conf usr/share/alsa/
test -d etc || mkdir etc
cp /etc/proxychains.conf /etc/graftcp-local.conf etc/
cp ~/.Xresources .

