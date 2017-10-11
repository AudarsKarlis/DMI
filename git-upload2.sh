#!/bin/bash
git config --global user.email aa13.a.klints@pt.edu.lv
git add .
git commit -m "20171011_23_35"
git commit -m $1
git push origin master

