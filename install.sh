#!/bin/bash

for f in ~/dotfiles/*
do
    ln -sf "$f" "$HOME/.${f##*/}"
done

git clone --recursive https://github.com/sorin-ionescu/prezto.git ~/.zprezto

chsh -s /bin/zsh