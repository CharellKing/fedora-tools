rm -rf ~/.ssh/*
sudo yum install git -y
ssh-keygen
sudo yum install xsel -y
cat ~/.ssh/id_rsa.pub | xsel -b -i
echo "please paste public-key to github's setting, then any key for contiune"
read
ssh -T git@github.com
git config --global user.name "CharellKing"
git config --global user.email "CharellkingQu@gmail.com"
cd ~
git clone https://github.com/CharellKing/.emacs.d.git
