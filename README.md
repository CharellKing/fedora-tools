fedora-tools
============

Every time, reinstall system, I almost spend all the day tinkering on all kind of softwares and configurations. So I
make a plan to script all the operations and simplify all the procedures. Now I only execute "sh fedora.sh", it can
finish almost the tasks.


sudo (fedora-sudoers.sh)
-------------
when finish the installation of fedora,you can't change to 'root' by 'sudo' command. you must put your current
non-root-user into "/etc/sudoers".

proxy (fedora-proxy.sh)
-------------
when emacs downloads some package, it need proxy. here i use wallproxy with  "http_proxy=127.0.0.1:8086"


faster yum (fedora-fastyum.sh)
-------------
If use internation resource, you will download or upgrade software slowly. Here I use three methods to speed up 'yum'.

### add national resource
add 163, sohu, the university of JiaoTong' resource in "/etc/yum.repos.d"

### install fastest-mirror plugin
this plugin will select the fastest download-mirror among all the sites.

### download with multi-thread
use 'axel' to download softwares when install or upgrade software by 'yum'


github (fedora-github.sh)
--------------
### install git
sudo yum install git

### generate rsa key
ssh-keygen

### upload your public key
this step is manual and you need to copy the ".ssh/xxx_ira.pub"'s content to github's "SSH Setting"

### initialize your email and user
git config --global user.name "CharellKing"
git config --global user.email "CharellkingQu@gmail.com"

from then on, you can push or pull your repositories from github.

### chrome (fedora-chrome.sh)
in China, you download chrome browser slowly and you had better to use xunlei.


virtualbox (fedora-virtualbox.sh)
------------------
download virtualbox and virtualbox-extension-pack. Maybe you download them slowly, you can use xunlei. I add current user
to "vboxusers" (user group) to solve share-usb problem.
sudo gpasswd -a `whoami` vboxusers

common software (fedora-software.sh)
-------------------
install some common software, such as kingsoft office, sogou-pinyin, xmind and so on


In the end, list the software to need be downloaded by xunlei and had better to seperate them and maybe speed up your progress.
