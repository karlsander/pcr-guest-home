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
nano .gitignore
ls -A
cd .dmrc
cat .dmrc
cat .ICEauthority
cat .Xauthority 
git add .
git commit -m "init"
git remote add origin git@github.com:karlsander/pcr-guest-home.git
git push -u origin master
git push origin master
git remote remove origin
git remote add origin https://github.com/karlsander/pcr-guest-home.git
git push -u origin master
nano setup.sh
git add .
git commit -m "inital"
git config --global user.email kall@example.com"

git config --global user.email kall
git config --global user.email kall@kall.ws
git config --global user.name "Karl Sander"
git commit -m "inital"
git remote add origin git@github.com:karlsander/pcr-guest-home.git
rm -rf .git
git init
ls
ls -l
ls -A
git pull
git add .
git commit -m "add shutdown shortcut"
git push
git commit -m "set default keyboard layout to german"
git add .
git commit -m "set default keyboard layout to german"
git push
git commit -m "add onboard shortcut to desktop, maximize firefox"
git add .
git commit -m "add onboard shortcut to desktop, maximize firefox"
git push
git add .
git commit -m "configure onboard"
git push
