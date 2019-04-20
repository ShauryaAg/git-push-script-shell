#!/bin/sh

if [ ! -e .git ] ( git init ) fi
if [ -z $1 ] ( if [ -e .git/config ] ( A='grep url .git/config | cut -d " " -f 3' ( if [ -n $A ] ( remote=$A ) else ( read -p "Enter Remote URL: " remote ) fi ) fi ) else ( read -p "Enter Remote URL: " remote) fi ) else ( remote=$1 ) fi
isgit=${remote: : -4}
if [ "$isgit" != ".git" ] ( remote+=".git" && set url=$remote ) else ( url=$remote%.git ) fi
git remote set-url origin $remote
git add .
git rm --cached $0
if [ "%2"=="" ] ( msg="New Commit" ) else ( msg=$2 ) fi
git commit -m $msg
git pull origin master
git push -u origin master