CUR_DIR=`pwd`
#install axel wget
sudo yum install -y axel
sudo yum install -y wget
#axel configure file
sudo cp ${CUR_DIR}/config/axelget.conf /etc/yum/pluginconf.d/
sudo cp ${CUR_DIR}/config/axelget.py  /usr/lib/yum-plugins/


#install yum-fastestmirror
yum install -y yum-fastestmirror

#add yum national resource
cd /etc/yum.repos.d/
sudo wget -c http://mirrors.163.com/.help/fedora-163.repo
sudo wget -c http://mirrors.163.com/.help/fedora-updates-163.repo
sudo wget -c http://mirrors.sohu.com/help/fedora-sohu.repo
sudo wget -c http://mirrors.sohu.com/help/fedora-updates-sohu.repo

sudo yum makecache
