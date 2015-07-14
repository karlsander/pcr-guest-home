export DEBIAN_FRONTEND=noninteractive
apt-get -q -y update
apt-get -q -y upgrade
apt-get -q -y install git libreoffice unattended-upgrades

dpkg-reconfigure -plow unattended-upgrades

git clone https://github.com/karlsander/pcr-guest-home /home/nbadmin/pcr-guest-home/
cd /home/nbadmin/pcr-guest-home
git fetch --all
git reset --hard origin/master

rm -rf /etc/guest-session/
mkdir /etc/guest-session/
ln -s /home/nbadmin/pcr-guest-home/ /etc/guest-session/skel

cat /home/nbadmin/pcr-guest-home/config/10-xubuntu.conf > /etc/lightdm/lightdm.conf.d/10-xubuntu.conf

cat /home/nbadmin/pcr-guest-home/config/anacrontab >> /etc/anacrontab