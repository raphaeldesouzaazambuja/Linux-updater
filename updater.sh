#!/bin/bash

if $(which apt > /dev/null) || $(which dpkg > /dev/null); 
then
    clear
    echo "------------------------------------updating------------------------------------";

    sudo apt update
    sudo apt full-upgrade -y

    echo " ";
    read -p "------------------------------Press start to continue------------------------------";
    clear

    echo "------------------------------------cleaning-----------------------------------";
    
    sudo apt autoclean -y
    sudo apt autoremove -y
    sudo apt autopurge -y

    echo " ";
    read -p "-------------------------------Press start to finish-------------------------------";
    clear

    exit 1
fi

if $(which dnf > /dev/null); 
then
    clear
    echo "------------------------------------updating------------------------------------";

    sudo dnf update -y
    sudo dnf upgrade -y

    echo " ";
    read -p "------------------------------Press start to continue------------------------------";
    clear

    sudo dnf autoremove -y

    echo " ";
    read -p "-------------------------------Press start to finish-------------------------------";
    clear

    exit 1
fi

if $(which pacman > /dev/null); 
then
    clear
    echo "------------------------------------updating------------------------------------";

    sudo pacman -Syyuu
    
    echo " ";
    read -p "------------------------------Press start to continue------------------------------";
    clear
    
    echo "------------------------------------cleaning-----------------------------------";

    sudo pacman -Scc
    
    read -p "-------------------------------Press start to finish-------------------------------";
    clear

    if $(which yay > /dev/null);
    then
        clear
        echo "------------------------------------updating------------------------------------";

        sudo yay -Syyuu

        echo " ";
        read -p "------------------------------Press start to continue------------------------------";
        clear

        echo "------------------------------------cleaning-----------------------------------";

        sudo yay -Scc

        read -p "-------------------------------Press start to finish-------------------------------";
        clear

        exit 1
    else
        exit 1
    fi
fi