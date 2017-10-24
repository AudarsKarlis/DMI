#!/bin/bash
git config --global user.email aa13.a.klints@pt.edu.lv
git add .
git commit -m "20171024_19_15"
git commit -m $1
git push origin master

