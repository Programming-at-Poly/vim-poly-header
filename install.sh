# **************************************************************************** #
#                                                                              #
#                                                             |\               #
#    install.sh                                         ------| \----          #
#                                                       |    \`  \  |  p       #
#    By: cshepard6055 <cshepard6055@floridapoly.edu>    |  \`-\   \ |  o       #
#                                                       |---\  \   `|  l       #
#    Created: 2017/11/06 09:01:29 by cshepard6055       | ` .\  \   |  y       #
#    Updated: 2017/11/06 17:09:40 by cshepard6055       -------------          #
#                                                                              #
# **************************************************************************** #

# set vars
cr=`echo $'\n.'`
cr=${cr%.}
shell_config="~/.$(which $SHELL | cut -c6-11)rc"

echo "This installs pathogen for vim, and configures your header. "

while true; do
    read -p "Do you wish to do this? $cr" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no. ";;
    esac
done

echo "Would you like to create a .vimrc? [y/n]"
read yn

if [ $yn = "Y" ] || [ $yn = "y" ]
then
    touch ~/.vimrc
    echo "Basic or complex? [b/c] "
    read bc
fi

echo "execute pathogen#infect()" >> ~/.vimrc
echo "\tsyntax on:" >> ~/.vimrc
echo "\tfiletype plugin indent on" >> ~/.vimrc

# create || overwrite .vimrc
if [ $bc = "C" ] || [ $bc = "c" ]
then
    echo "If you have a .vimrc, it will be reset. (2 seconds)"
    sleep 2
    cp .vimrc ~/.vimrc
fi

# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

touch $shell_config

# set $MAIL environment variable
read -p "Setting USER var. What is your poly username? e.g. jdoe1337 $cr" USER
echo "export MAIL=$USER@floridapoly.edu" >> $shell_config
echo "export USER=$USER" >> $shell_config
source $shell_config
