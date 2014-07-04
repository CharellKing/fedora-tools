CUR_DIR=`pwd`
sudo cp ${CUR_DIR}/config/google-chrome.repo /etc/yum.repos.d
sudo yum makecache
sudo yum install google-chrome-stable -y
