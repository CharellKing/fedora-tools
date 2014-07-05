fedora-tools
============

Every time, reinstall my system, I almost spend all the day tinkering on all kind of software and configurations. So I
make a plan to script all the operations and simplify all the procedures.


sudo (fedora-sudoers.sh)
-------------
when finish the installation of fedora, you can't change to 'root' by 'sudo' command. you must put your current
non-root-users into "/etc/sudoers".

proxy (fedora-proxy.sh)
-------------
when emacs downloads some package, it need proxy. here i use wallproxy with proxy "http_proxy=127.0.0.1:8086"


faster yum (fedora-fastyum.sh)
-------------
If you use internation resource, you will download or upgrade software slowly. Here I use three method to speed 'yum'.

### add national resource
add 163, sohu, the university of JiaoTong' resource in "/etc/yum.repos.d"

### install fastest-mirror plugin
this plugin will select the fastest download-mirror among all the repos.

### download with multithread
use 'axel' to download software when install or upgrade software by 'yum'


github (fedora-github.sh)
--------------
there are four steps.

### install git
sudo yum install git

### generate rsa key
ssh-keygen

### upload your public key
this step is manual and you need to copy the ".ssh/xxx_ira.pub"'s content to github's SSH-SETTING

### initialize your email and user
git config --global user.name "CharellKing"
git config --global user.email "CharellkingQu@gmail.com"

### chrome (fedora-chrome.sh)
in china, you download chrome browser slowly and you had better to use xunlei to download it .


virtualbox (fedora-virtualbox.sh)
------------------
It download virtualbox and virtualbox-extension-pack. Maybe you download them slowly, you can use xunlei. I add current user
to "vboxusers" (user group).
sudo gpasswd -a `whoami` vboxusers

common software (fedora-software.sh)
-------------------
I install some common software, such as kingsoft office, sogou-pinyin, xmind and so on


In the end, I list the software you need download by xunlei and you seperate them and will speed your procedure.
