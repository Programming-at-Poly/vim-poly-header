#!/bin/bash
# **************************************************************************** #
#                                                                              #
#                                                             |\               #
#    ember_install.sh                                   ------| \----          #
#                                                       |    \`  \  |  p       #
#    By: cshepard6055 <cshepard6055@floridapoly.edu>    |  \`-\   \ |  o       #
#                                                       |---\  \   `|  l       #
#    Created: 2017/11/06 09:01:29 by cshepard6055       | ` .\  \   |  y       #
#    Updated: 2017/11/06 09:02:14 by cshepard6055       -------------          #
#                                                                              #
# **************************************************************************** #

echo "This installs pathogen for vim, and configures your header."
echo "If you have a .vimrc, it will be reset."
sleep 1
echo "Works in ember; ctrl+c to terminate if not in ember (2 seconds)."
sleep 2

# create || overwrite .vimrc
cp .vimrc ~/.vimrc

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install header
cp plugin/poly-header.vim ~/.vim/plugin

# set $MAIL environment variable
echo "export MAIL=$(whoami)@floridapoly.edu" >> ~/.bashrc
source ~/.bashrc
