#!/bin/bash
# usage: . git_delete_branch.sh <nom_de_la_branche>
# Efface en local et remote une branche
git push origin --delete $1
git branch -D $1