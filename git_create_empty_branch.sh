#!/bin/bash
# usage: . git_create_empty_branch.sh <nom_de_la_branche>
#	
git checkout --orphan $1
git rm --cached -r .
rm -r *
echo "# Depot pour $1" >> README.md 
git add README.md
git commit -am "Premier commit!"
git push --set-upstream origin $1