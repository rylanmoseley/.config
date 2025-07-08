#!/bin/bash

git pull
OLDPACKAGES="$(cat allpackages.txt)"

PACMANLIST=""
while read line || [[ -n $line ]];
do
	PACMANLIST+=" ${line% *}"
done <pacmanpackages.txt
pacman -Syu PACMANLIST

YAYLIST=""
while read line || [[ -n $line ]];
do
	YAYLIST+=" ${line% *}"
done <aurpackages.txt
Xyay YAYLIST

./updatelists.sh

diff <($OLDPACKAGES) allpackages.txt
