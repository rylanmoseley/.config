#!/bin/bash

git pull
rm allpackages.old
mv allpackages.txt allpackages.old

PACMANLIST=""
while read line || [[ -n $line ]];
do
	PACMANLIST+=" ${line% *}"
done <pacmanpackages.txt

YAYLIST=""
while read line || [[ -n $line ]];
do
	YAYLIST+=" ${line% *}"
done <aurpackages.txt
yay $PACMANLIST $YAYLIST

./updatelists.sh

diff --color=always allpackages.old allpackages.txt
