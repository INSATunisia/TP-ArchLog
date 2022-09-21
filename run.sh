#!/bin/sh
if [ "$#" -ne 1 ] ; then
  echo "Donner le message du commit"
  exit 1
fi

git add .
git commit -m $1
git push

mkdocs gh-deploy

