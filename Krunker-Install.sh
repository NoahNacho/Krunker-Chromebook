#!/bin/bash
#Prerequisites
sudo apt install libnss3
#Krunker install
who=$(whoami)
wget https://client2.krunker.io/setup.AppImage
mv setup.AppImage Krunker.AppImage
chmod +x Krunker.AppImage
touch /home/$who/Krunker.desktop
echo "Type=Application" >> Krunker.desktop
echo "Terminal=false" >> Krunker.desktop
echo "Name=Krunker" >> Krunker.desktop
echo "Icon=/home/noah/Downloads/profilemask.jpg" >> Krunker.desktop
echo "Exec=/home/noah/Desktop/setup.AppImage" >> Krunker.desktop
echo "StartupNotify=true" >> Krunker.desktop
chmod +x /home/$who/Krunker.desktop
echo 'There should be a Desktop Icon to run Krunker from. if not you can go to a Terminal anytime and run "./Krunker.AppImage"'
