#!/bin/bash

trap exit ERR

ln -s $HOME/.tmux/.tmux.conf $HOME/.tmux.conf
cd ~/.tmux && git submodule init && git submodule update
cd ~/.tmux/vendor/tmux-mem-cpu-load && cmake . && make && make install
tmux source-file ~/.tmux.conf
