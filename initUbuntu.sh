apt-get update
apt-get install vim
apt-get install git
apt-get install zsh
chsh -s /bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# 拷贝zsh配置
cp -f .zshrc.conf .zshrc

# 安装php依赖
apt-get -y autoconf bison re2c
wget https://github.com/php/php-src/archive/php-7.1.9.tar.gz
tar -zxvf php-7.1.9.tar.gz
cd php-7.1.9
./buildconf --force