#!/bin/bash

launchers=("tty")
echo "[0] tty"
i=1
for file in ~/.config/scripts/launcher/launchscripts/*; do
	if [[ "${file##*/}" != ${0##*/} ]]; then
		filename="${file##*/}"
		echo "[$i] ${filename%.sh}"
		launchers+=("$file")
		((++i))
	fi
done
read -rn1 choice
if [[ "$choice" == "0" ]]; then
	clear
else
	if [[ -x "${launchers[$choice]}" ]]; then
		clear
		"${launchers[$choice]}"
	else
		clear
		echo "not a valid and executable launch script"
		$0
	fi
fi
