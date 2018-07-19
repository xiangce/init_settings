# /usr/bin/bash

LIST=".bashrc .ctags .gitconfig .git-prompt.sh .tmux.conf tmux-session .vimrc"

for i in $LIST; do
    ln -f ./$i ~/$i
done
