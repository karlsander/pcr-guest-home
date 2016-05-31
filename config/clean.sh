rm -rf /etc/guest-session/

cat /home/nbadmin/pcr-guest-home/config/10-xubuntu-clean.conf > /etc/lightdm/lightdm.conf.d/10-xubuntu.conf
cat /home/nbadmin/pcr-guest-home/config/anacrontab-clean > /etc/anacrontab

passwd nbadmin