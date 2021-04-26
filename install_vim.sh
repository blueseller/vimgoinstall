
# delete vim old version
sudo yum remove vim

# install dep
sudo yum install gcc ncurses ncurses-devel

sudo yum -y install git ncurses-devel ruby ruby-devel lua lua-devel perl perl-devel python3 python3-devel python2-devel perl-ExtUtils-Embed lrzsz cmake wget gcc gcc-c++ unzi

wget https://codeload.github.com/vim/vim/tar.gz/refs/tags/v8.2.2771 -o vim.tar.gz
tar zxvf vim.tar.gz

./configure --with-features=huge \
	--enable-multibyte \
	--enable-rubyinterp=yes \
	--enable-python3interp=yes \
	--with-python3-config-dir=/usr/bin/python3.6-config \
	--enable-perlinterp=yes \
	--enable-luainterp=yes \
	--enable-gui=gtk2 --enable-cscope --prefix=/usr/local

sudo make VIMRUNTIMEDIR=/usr/share/vim/vim82
make install

# 安装vim 插件管理工具  bundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

sudo apt install python3-pip

pip3 install pynvim

# 安装字体

git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1

./install.sh DroidSansMono
￼
./install.sh Hack

# nerd tree 乱码解决方式
需要使用字符集 nerd sans mono 就可以了
