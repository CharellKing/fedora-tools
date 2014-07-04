CUR_DIR=`pwd`

#===============================================
#skype
#===============================================
cd ${CUR_DIR}/download
wget -c http://download.skype.com/linux/skype-4.2.0.11-fedora.i586.rpm
sudo yum install skype* -y

#===============================================
#teamviewer
#===============================================
cd ${CUR_DIR}/download
wget -c http://download.teamviewer.com/download/teamviewer_linux.rpm
sudo yum install teamviewer* -y

#===============================================
#wps
#===============================================
cd ${CUR_DIR}/download
wget -c http://wdl1.cache.wps.cn/wps/download/Linux/unstable/wps-office-8.1.0.3724-0.1.b1p2.i686.rpm
sudo yum install wps-office* -y

#===============================================
#sogou
#===============================================
gsettings set org.gnome.settings-daemon.plugins.keyboard active false
sudo yum install fcitx fcitx-devel fcitx-configtool fcitx-table fcitx-table-chinese fcitx-pinyin im-chooser -y

if `grep -q "export GTK_IM_MODULE=fcitx" ~/.bashrc`; then
    echo "has filled"
else
    echo 'export GTK_IM_MODULE=fcitx' >> ~/.bashrc
    echo 'export QT_IM_MODULE=fcitx'  >> ~/.bashrc
    echo 'export XMODIFIERS="@im=fcitx"' >> ~/.bashrc
fi


cd ${CUR_DIR}/download
wget -c http://download.ime.sogou.com/1402921811/sogou_pinyin_linux_1.0.0.0033_amd64.deb?st=1NMr9G4akc-sMYIzMisQrQ&e=1404492511&fn=sogou_pinyin_linux_1.0.0.0033_amd64.deb
ar -vx *sogou_pinyin_linux*
sudo tar zxvf data.tar.gz -C /
sudo cp /usr/lib/x86_64-linux-gnu/fcitx/fcitx-sogoupinyin.so /usr/lib64/fcitx/
sudo chmod +x /usr/lib64/fcitx/fcitx-sogoupinyin.so

#================================================
#xmind
#================================================
cd ${CUR_DIR}/download
wget -c http://dl2.xmind.net/xmind-downloads/xmind-linux-3.4.1.201401221918_amd64.deb
ar -vx xmind-linux*.deb
tar xf data.tar.gz
sudo cp -r usr/local/xmind/ /opt
sudo cp -r usr/share/ /usr/
tar xf control.tar.gz
sudo sh postinst

#desktop
sudo cp ${CUR_DIR}/config/xmind.desktop /usr/share/applications/

#=================================================
#stardict
#=================================================
sudo yum install stardict -y

#=================================================
#flashplayer
#=================================================
cd ${CUR_DIR}/download
wget -c http://fpdownload.macromedia.com/get/flashplayer/pdc/11.2.202.378/flash-plugin-11.2.202.378-release.x86_64.rpm
sudo rpm -ivh flash-plugin*
sudo yum install flash-plugin

#=================================================
#common software
#=================================================
sudo yum install gimp cheese unrar gnome-tweak-tool evince chmsee -y

#=================================================
#theme
#=================================================
wget -c -P ${CUR_DIR}/download/ https://satya164.github.io/fedy/fedy-installer
chmod +x ${CUR_DIR}/download/fedy-installer
sudo ${CUR_DIR}/download/fedy-installer
sudo fedy -e numix_themes

#=================================================
#vedio, audio format
#=================================================
sudo yum localinstall --nogpgcheck http://mirrors.163.com/rpmfusion/free/fedora/rpmfusion-free-release-stable.noarch.rpm -y
sudo yum localinstall --nogpgcheck http://mirrors.163.com/rpmfusion/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm -y
sudo yum install gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-ugly libtunepimp-extras-freeworld xine-lib-extras-freeworld ffmpeg ffmpeg-libs gstreamer-ffmpeg libmatroska xvidcore -y
