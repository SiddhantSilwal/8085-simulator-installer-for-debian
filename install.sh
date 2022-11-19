#!/bin/bash

 deps=$(sudo apt-get install default-jdk && sudo apt-get install default-jre)
 wget=/usr/bin/wget

echo $(cd)
main()
{
    printf "Welcome to\033[1;34m 8085-Simulator installer by Siddhant Silwal to\033[0m "
    printf "\033[1mDo you want to Install or Uninstall?\n 1)INSTALL \n 2)uninstall\033[0m" 
    read choice
    case $choice in
        1 ) instl; break;;
        2 ) unstl; break;;
        "") instl; break;;
        * ) echo "Error: Invalid Option"; break;;
    esac
   
}

instl()
{
    printf "\033[1mFirst installing Java to your system"
    echo $deps
    printf "Configuring application files for 8085-Simulator\033[0m"
    download
    launcher
    printf "\033[1;32mSuccess: 8085-Simulator has been installed\033[0m"
}

unstl()
{
    echo $(cd)
    echo $(sudo rm -rf /usr/share/8085-sim)
    echo $(sudo rm -rf /usr/share/applications/8085-simulator.desktop)
    printf "\033[1;32m8085-Simulator uninstalled successfully \033[0m"
}

download()
{
    echo $(sudo mkdir /usr/share/8085-sim)
    sudo wget "https://github.com/8085simulator/8085simulator/raw/master/dist/8085Compiler.jar" -P /usr/share/8085-sim
}

launcher()
{
    echo $(sudo cp ./8085-simulator.desktop /usr/share/applications)
    echo $(sudo cp ./img/8085simIcon.png /usr/share/8085-sim)
}

main