#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install git

# Download the 8085 simulator source code
git clone https://github.com/yourusername/8085-simulator.git

# Build the simulator
cd 8085-simulator
chmod +x install.sh
source install.sh

case $choice in

    printf "Welcome to\033[1;34m 8085-Simulator installer by Siddhant Silwal \033[0m \n"
    printf "\033[1mDo you want to Install or Uninstall?\n 1)INSTALL \n 2)uninstall\033[0m \n" 
    1 ) instl; ;;
    2 ) unstl; ;;
    "") instl; ;;
    * ) echo "Error: Invalid Option"; break;;
    esac


# Clean up
cd ..
rm -rf 8085-simulator