#!/bin/bash

 deps=$(sudo apt-get install default-jdk && sudo apt-get install default-jre)
 wget=/usr/bin/wget

echo $(cd)
main()
{
    echo "Welcome to 8085-Simulator installer by Siddhant Silwal"
    echo "Do you want to Install or Uninstall"
    select yn in "INSTALL" "uninstall"; do
        case $yn in
            install   ) instl; break;;
            uninstall ) unstl; break;;
            ""        ) instl; break;;
            *         ) echo "Error: Invalid Option"; break;;
        esac
    done
}

instl()
{
    echo "First installing Java to your system"
    echo $deps
    echo "Configuring application files for 8085-Simulator"
    download
    launcher
    echo "Success: 8085-Simulator has been installed"
}

unstl()
{
    echo $(cd)
    echo $(sudo rm -rf /usr/share/8085-sim)
    echo $(sudo rm -rf /usr/share/applications/8085-simulator.desktop)
    echo "8085-Simulator uninstalled successfully"
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