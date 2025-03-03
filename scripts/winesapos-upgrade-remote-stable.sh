#!/bin/zsh

set -x

kdialog --title "winesapOS Upgrade" --yesno "Do you want to first upgrade system packages?\nThis may take a long time."
if [ $? -eq 0 ]; then
    yay -S -y -y -u --noconfirm
fi

kdialog --title "winesapOS Upgrade" --yesno "Do you want to upgrade winesapOS?"
if [ $? -eq 0 ]; then
    curl https://raw.githubusercontent.com/LukeShortCloud/winesapOS/stable/scripts/winesapos-upgrade.sh | sudo zsh
fi

kdialog --title "winesapOS Upgrade" --msgbox "Upgrade complete."
