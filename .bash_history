sudo ln -s /home/guest-settings /etc/guest-session/skel
sudo apt-get update && sudo apt-get install -f
gnome-control-center
xfce4-panel --quit
pkill xfconfd
xfce4-panel --quit ; pkill xfconfd ; rm -rf ~/.config/xfce4/panel ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ; xfce4-panel;
xfce4-mcs-manager
xfce-mcs-manager
xfce-setting-show
locate xfce-setting-show
locate xfce-mcs-manager
cd /tmp
ls
cd /home
cd guest-settings/
ls
cd Desktop/
ls
nano bookmarks.json
ls
cd ..
ls
cd guest-settings/
git init
