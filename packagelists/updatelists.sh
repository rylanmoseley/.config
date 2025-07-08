#!/bin/bash

cd /home/rylan/.config/packagelists

pacman -Q > allpackages.txt
pacman -Qen > pacmanpackages.txt
pacman -Qm > aurpackages.txt

git add *
git commit -m "automatically update package lists"
git push
