CUR_DIR=`pwd`

#====================================================
#install virtualbox
#===================================================
cd ${CUR_DIR}/download
sudo wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | rpm --import -
sudo rpm --checksig PACKAGE_NAME
sudo wget -P /etc/yum/yum.repos.d/ http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
wget http://download.virtualbox.org/virtualbox/4.3.12/Oracle_VM_VirtualBox_Extension_Pack-4.3.12-93733.vbox-extpack
sudo yum makecached
sudo yum install VirtualBox

#==================================================
#/etc/init.d/vboxdrv setup
#==================================================
sudo yum install -y kernel-headers kernel-devel dkms

#==================================================
#set virtualbox usb
#==================================================
#add group usbfs and add user to usbfs
sudo groupadd usbfs
sudo sed -i "s/usbfs:x:[0-9]*:&/&`whoami`:/" /etc/group

#get usbfs id and add setting to "/etc/fstab"
devgid=`grep "usbfs:x:[0-9]*:" /etc/group | cut -d ":" -f 3`
setting="none /proc/bus/usb usbfs devgid=${devgid},devmode=664 0 0"
res=`grep ${setting} /etc/fstab`
#stop adding setting duplicatly
if [ !$res ]; then
    sudo echo "none /proc/bus/usb usbfs devgid=${devgid},devmode=664 0 0" >> /etc/fstab
fi
