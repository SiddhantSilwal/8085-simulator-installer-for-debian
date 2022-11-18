#!/bin/bash

Dwnld=$(sudo wget https://github.com/8085simulator/8085simulator/raw/master/dist/8085Compiler.jar)
echo $(cd)
main()
{
    echo "Welcome to 8085-Simulator installer by Siddhant Silwal"
    echo "Do you want to Install or Uninstall"
    select yn in "INSTALL" "uninstall"; do
        case $yn in 
            uninstall ) unstl; break;;
            *) instl; break;;
        esac

}

instl()
{
    download
    launcher
}

unstl()
{
    echo $(cd)
    echo $(sudo rm -rf /usr/share/8085-sim)
    echo $(sudo rm -rf /usr/share/applications/8085-simulator.desktop)
}

download()
{
    echo $(sudo mkdir /usr/share/8085-sim)
    echo $(cd /usr/share/8085-sim)
    echo $Dwnld
    echo $(cd)
}

launcher()
{
    echo $(sudo cp ./8085-simulator.desktop /usr/share/applications)
    echo $(sudo cp ./img/8085simIcon.png /usr/share/8085-sim)
}