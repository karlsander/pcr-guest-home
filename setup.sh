export DEBIAN_FRONTEND=noninteractive
apt-get -q -y update
apt-get -q -y upgrade
apt-get -q -y install git libreoffice unattended-upgrades

dpkg-reconfigure -plow unattended-upgrades

git clone https://github.com/karlsander/pcr-guest-home
chmod -R 777 pcr-guest-home
mkdir /etc/guest-session/
sudo ln -s /home/nbadmin/pcr-guest-home/ /etc/guest-session/skel

printf "[SeatDefaults]\nuser-session=xubuntu\nautologin-user=guest\nautologin-user-timeout=0\nautologin-guest=true\n" > /etc/lightdm/lightdm.conf.d/10-xubuntu.conf