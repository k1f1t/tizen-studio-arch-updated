#!/bin/sh
yay -Syu rpmextract cpio gnome-keyring webkitgtk
./dpkg
./fake-dpkg.sh
if test -f tizen_studio.bin; then
    echo "File exists. Continuing with downloaded version. If you want to update just delete tizen_studio.bin file"
else
    wget -O tizen_studio.bin https://download.tizen.org/sdk/Installer/tizen-studio_6.1/web-ide_Tizen_Studio_6.1_ubuntu-64.bin
    # official link https://download.tizen.org/sdk/Installer/tizen-studio_4.5/web-ide_Tizen_Studio_4.5_ubuntu-64.bin
    # For US CDN
    # wget -O tizen_studio.bin http://usa.sdk-dl.tizen.org/web-ide_Tizen_Studio_4.5_usa_ubuntu-64.bin
fi

chmod +x tizen_studio.bin
PATH=$(pwd):$PATH ./tizen_studio.bin
