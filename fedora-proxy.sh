cp -r wallproxy ~

sudo yum install python-devel -y
sudo yum install libffi-devel libffi -y
sudo yum install openssl-devel -y
sudo pip install pyopenssl
sudo env ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future yum install pycrypto -y
certutil -d sql:$HOME/.pki/nssdb -A -t "C,," -n GoAgent -i "/home/`whoami`/wallproxy/local/cert/CA.crt"

#=====================================================
#browers plugins
#=====================================================
#firefox autoproxy
#chrome  proxychain
