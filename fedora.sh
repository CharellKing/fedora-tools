CUR_DIR=`pwd`
mkdir ${CUR_DIR}/download

#=================================================================
#add your common user to sudoers
#=================================================================
#"ck      ALL=(ALL)       ALL"

echo "================================================================="
echo "proxy"
echo "================================================================="
sh fedora-proxy.sh


echo "please start wallproxy for emacs\n ...."
read

echo "================================================================="
echo "fast yum"
echo "================================================================="
sh fedora-fastyum.sh

echo "================================================================="
echo "github"
echo "================================================================="
sh fedora-github.sh

echo "================================================================="
echo "chrome, too slow in china"
echo "================================================================="
#sh fedora-chrome.sh

echo "================================================================="
echo "virtualbox, too slow to download Oracle_VM_VirtualBox_Extension_Pack"
echo "================================================================="
sh fedora-virtualbox.sh

echo "================================================================="
echo "common software, xmind icon's path error"
echo "================================================================="
sh fedora-software.sh

echo "================================================================="
echo "emacs, need proxy"
echo "================================================================="
sh fedora-emacs.sh


#=====================================================
#to download files quickly, you can download them
#by xulei to the directory "fedora-tools/download"
#=====================================================
#Oracle_VM_VirtualBox_Extension_Pack
#VirtualBox
#sogou_pinyin_linux
#xmind-linux
#flash-plugin*.rpm
#chrome-stable

#=====================================================
#configure emacs
#=====================================================
#init-c.el
