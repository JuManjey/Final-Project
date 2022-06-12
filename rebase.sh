#!/bin/sh

git config --global --add safe.directory /var/www/html
cd /var/www/html
echo "REBASE"
git rebase

