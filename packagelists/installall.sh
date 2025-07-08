#!/bin/bash

git pull
OLDPACKAGES="$(cat allpackages.txt)"

PACMANLIST=""
while read line || [[ -n $line ]];
do
	PACMANLIST+=" ${line% *}"
done <explicitpackages.txt

echo $PACMANLIST
