CUR_DIR=`pwd`

sudo yum update -y
#====================================================
#install virtualbox
#===================================================
wget -c -P ${CUR_DIR}/download http://download.virtualbox.org/virtualbox/4.3.12/VirtualBox-4.3-4.3.12_93733_fedora18-1.x86_64.rpm
wget -c -P ${CUR_DIR}/download http://download.virtualbox.org/virtualbox/4.3.12/Oracle_VM_VirtualBox_Extension_Pack-4.3.12-93733.vbox-extpack
sudo yum makecached
sudo yum install ${CUR_DIR}/download/VirtualBox* -y

#==================================================
#/etc/init.d/vboxdrv setup
#==================================================
sudo yum install -y kernel-headers kernel-devel dkms

#==================================================
#set virtualbox usb
#==================================================
sudo gpasswd -a `whoami` vboxusers
#add group usbfs and add user to usbfs
# sudo groupadd usbfs
# sudo sed -i "s/usbfs:x:[0-9]*:$/&`whoami`:/" /etc/group

#get usbfs id and add setting to "/etc/fstab"
# devgid=`grep "usbfs:x:[0-9]*:" /etc/group | cut -d ":" -f 3`
# setting="none /proc/bus/usb usbfs devgid=${devgid},devmode=664 0 0"
#stop adding setting duplicatly
# if `grep -q "${setting}" /etc/fstab`; then
#     echo "has filled"
# else
#     sudo echo ${setting} >> /etc/fstab
# fi
