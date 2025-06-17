#!/bin/bash

arch=$(checkupdates | wc -l)
aur=$(yay -Qua | wc -l)
packages=$(yay -Qu)
tooltip="$arch Arch packages and $aur AUR packages need updates\n${packages//$'\n'/\\n}"
text=$(yay -Qu | wc -l)
if [ "$text" = "0" ];
then
	echo "{\"text\":\"$text\", \"tooltip\":\"No package updates available\"}"
else
	echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"
fi
