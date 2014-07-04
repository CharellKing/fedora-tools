cp -r wallproxy ~/

touch ~/.wgetrc
echo "http_proxy = 127.0.0.1:8086" >> ~/.wgetrc
echo "ftp_proxy = 127.0.0.1:8086" >> ~/.wgetrc

#end, wallproxy will be start until CTRL + C
echo "start proxy with the command 'sh ~/wallproxy/local/startup.sh', press any key for continue"
read
