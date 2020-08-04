#!/bin/bash

# <!-- INSTALL JAVA -->
sudo apt-get -qq -y --no-install-recommends install gnupg software-properties-common locales
# <!-- INSTALL JAVA: GPG KEYS -->
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9
# <!-- INSTALL JAVA: AZUL REPO -->
sudo apt-add-repository "deb http://repos.azulsystems.com/ubuntu stable main"
# <!-- INSTALL JAVA: INSTALL JAVA FINALLY -->
sudo apt-get -qq -y --no-install-recommends install zulu-11=11.39+15


