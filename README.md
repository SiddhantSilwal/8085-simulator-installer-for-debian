# Jubin's 8085 simulator installer for Ubuntu

A bash script to install Jubin's 8085 microprocessor simulator to Ubuntu and it's
derivatives. Jubin's 8085 simulator is a java based application which simulates the 8085
microprocessor for assembly level programming.

This installer script downloads and installs all the necessary packages and creates a desktop
launcher icon for the users' ease of access.

## Requirements

Following are the requrements for 8085-Simulator :

1. **_wget_**
1. **_default-jdk_**
1. **_default-jre_**

> Note: **_default-jdk_** and **_default-jre_** will be automatically installed by the installer.

## How to run the installer

Following are the necessary commands to run this installer :

```
sudo apt-get install git wget
git clone https://github.com/SiddhantSilwal/8085-simulator-installer-for-ubuntu.git
cd 8085-simulator-installer-for-ubuntu
chmod +x ./install.sh
./install.sh
```

## Custom download

For manually installing 8085 simulator _.jar_ file.

- [8085Compiler.jar](https://github.com/8085simulator/8085simulator/raw/master/dist/8085Compiler.jar)
  previous version
- [8085Compiler_v1.jar](https://github.com/8085simulator/8085simulator/raw/master/8085Compiler_v1.jar)
- [8085Compiler_v0.jar](https://github.com/8085simulator/8085simulator/raw/master/8085Compiler_v0.jar)

## Documentation

Check the following pdf for the documentation of the program (**_Not the installer_**).

- [8085_Documentation.pdf](https://github.com/8085simulator/8085simulator/raw/master/8085_Documentation_latex/8085_Documentation.pdf)

## Credits

This repo stores just the bash script necessary to install 8085-simulator mentioned in https://github.com/8085simulator/8085simulator.github.io
. So for sotware related issues and support check in [here](https://github.com/8085simulator/8085simulator.github.io).
