#!/bin/bash
cur_date="`date '+%Y-%m-%d %H:%M:%S'`"

git checkout master

gitbook build

git add .
git commit -m $cur_date
git push -u origin master
git checkout gh-pages
cp -r _book/* .
git add .
git commit -m $cur_date
git push -u origin gh-pages
git checkout master