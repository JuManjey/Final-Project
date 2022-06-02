#!/bin/sh

git config --global --add safe.directory /root/Downloads/Documents/test_html/Final-Project
cd /var/www/html
echo "REBASE"
git rebase
