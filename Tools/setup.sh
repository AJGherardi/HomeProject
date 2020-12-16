#!/usr/bin/env bash
# install snaps
snap install android-studio --classic
snap install flutter --classic
snap install go --classic
snap install code --classic
# install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
# install jdk and setup flutter
sudo apt install openjdk-8-jdk
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/" >> ~/.profile
source ~/.profile
flutter doctor --android-licenses
# add udev file for mesh controller
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="2fe3", ATTR{idProduct}=="0100", MODE="0666"' >> /etc/udev/rules.d/100-control.rules