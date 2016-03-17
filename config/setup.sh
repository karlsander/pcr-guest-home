export DEBIAN_FRONTEND=noninteractive
apt-get -q -y --force-yes update
apt-get -q -y --force-yes upgrade
apt-get -q -y --force-yes install git unattended-upgrades xubuntu-restricted-extras flashplugin-installer

dpkg-reconfigure -plow unattended-upgrades

if [ -d "/home/nbadmin/pcr-guest-home/.git" ]; then
    cd /home/nbadmin/pcr-guest-home
    git fetch --all
    git reset --hard origin/master
else
    git clone https://github.com/karlsander/pcr-guest-home /home/nbadmin/pcr-guest-home/
fi

rm -rf /etc/guest-session/
mkdir /etc/guest-session/
ln -s /home/nbadmin/pcr-guest-home/ /etc/guest-session/skel

cat /home/nbadmin/pcr-guest-home/config/10-xubuntu.conf > /etc/lightdm/lightdm.conf.d/10-xubuntu.conf

cat /home/nbadmin/pcr-guest-home/config/anacrontab >> /etc/anacrontab

cat /home/nbadmin/pcr-guest-home/config/pcr >> /etc/NetworkManager/system-connections/pcr