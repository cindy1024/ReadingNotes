#!/bin/bash
cur_date="`date '+%Y-%m-%d_%H:%M:%S'`"

git checkout master

gitbook build

git add .
git commit -m $1/$cur_date
git push -u origin master
git checkout gh-pages
cp -r _book/* .
git add .
git commit -m $1/$cur_date
git push -u origin gh-pages
git checkout master

#usage
#sh xxx.sh '更新说明'