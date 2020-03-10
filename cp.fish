#!/bin/fish
test -d .config/fusuma || mkdir -p .config/fusuma
cp ~/.config/fusuma/config.yml .config/fusuma/
test -d .ssh || mkdir .ssh
cp ~/.ssh/config .ssh/
cp ~/.gitconfig ~/.vimrc ~/.zshrc .
test -d scripts || mkdir scripts
cp ~/scripts/* ./scripts/
test -d .i3 || mkdir .i3
cp ~/.i3/config .i3/
test -d .config/i3status || mkdir -p .config/i3status
cp ~/.config/i3status/config .config/i3status
cp -r ~/.config/fish .config/
test -d .config/kitty || mkdir -p .config/kitty
cp ~/.config/kitty/kitty.conf ~/.config/kitty/theme.conf ./.config/kitty
cp ~/.profile .
cp ~/.makepkg.conf .
test -d .config/fcitx/rime || mkdir -p .config/fcitx/rime
cp ~/.config/fcitx/rime/*.yaml .config/fcitx/rime
test -d .config/nvim || mkdir -p .config/nvim
cp ~/.config/nvim/init.vim ~/.config/nvim/coc-settings.json .config/nvim

