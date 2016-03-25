#!/bin/bash
# usage: . git_delete_branch.sh <nom_de_la_branche>
# Efface en local et remote une branche
# url:
# - http://stackoverflow.com/questions/2003505/delete-a-git-branch-both-locally-and-remotely
git push origin --delete $1
git branch -D $1