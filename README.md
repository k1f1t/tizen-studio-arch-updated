# How to install Tizen Studio on Arch Linux

### Just clone the repo and run `./install.sh` 
### THAT IS ALL YOU HAVE TO DO INSTEAD OF ORGINAL VERSION!
#### You need to have yay installed!

## What I do?

1. Put newest version of Tizen Studio!
2. **If something is outdated just change url to newest version from [here](https://download.tizen.org/sdk/Installer) and make an bug in pull requests**
3. Automatically execute ./dpkg and ./fake-dpkg.sh sctipts so you don't have to do it!
4. Allow you to reinstall software without redownloading whole installer!
5. **If you want to update remove tizen-studio.bin**

## What Toxblh/tizen-studio-arch do?

0. Install java, I use OpenJDK 11.0.7 (via sdkman!)
1. Download the studio from https://developer.tizen.org/ko/development/tizen-studio/download?langredirect=1# (Tizen Studio with IDE installer)
2. Do it executable
3. Start with fake-dpkg (dkpg it's a symbol link) which will provide correct information for installer checks
4. List of deps what I used in arch for work. Will be cool if you provide more the information in issues or PR

- rpm2cpio - `yay -S rpmextract`
- cpio - `yay -S cpio`
- gnome-keyring `pacman -S gnome-keyring` for certificates
- libwebkitgtk-1.0-0 - so here as I understand will be provided if you install `webkitgtk` but I don't remember. (This dependency is solved with https://github.com/frealgagu/archlinux.webkitgtk2/releases)

If you have some problems with kwin while running device manager, such as some windows not well sized (1 pixel x 59) so is impossible to connect to devices.
To solve it change to other than kde wm or force windows size as in https://ahelpme.com/software/kde-plasma/kde-plasma-windows-force-resize-ikvm-virtual-keyboard/ 
Thanks @aleixq
