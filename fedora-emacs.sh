sudo yum install python-pip python-devel build-essential
sudo pip install cpplint

sudo yum install ruby -y
sudo yum install git -y
sudo yum install doxygen -y

sudo yum install gcc g++ -y
sudo yum install cmake

sudo pip install ipython

sudo yum install emacs -y

sudo yum install clang clang-devel

#for python
sudo pip install jedi

cd ~/.emacs.d/iron*
mkdir build
cmake ..
make && make install

#start emacs to install package with proxy
http_proxy=127.0.0.1:8086 emacs -nw
