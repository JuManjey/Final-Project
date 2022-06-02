#!/bin/sh

git config --global --add safe.directory /root/Documents/test_html/Final-Project/
cd /var/www/html
echo "REBASE"
git rebase
