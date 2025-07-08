#!/bin/bash

cd ~/.config/packagelists

pacman -Q > allpackages.txt
pacman -Qe > explicitpackages.txt
pacman -Qm > manualpackages.txt

git add *
git commit -m "automatically update package lists"
git push
