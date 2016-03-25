#!/bin/bash
# usage: . add_gitconfig.sh
# rajoute le contenu du fichier local `.gitconfig` dans le fichier .gitconfig du user courant

cat .gitconfig >> ~/.gitconfig
