# vim-poly-header
A vim header for programming projects at Poly, forked from pbondoer's 42header

![header image](https://imgur.com/lToMWk0.png)

## Features
* Elegant trimming of long strings
* Updates filename line when changed
* Updates "Updated" line only when buffer is changed
* Works with all formats that default supports
* Binds to `F1` for easy access
* Overrides `:Stdheader`

## Usage
Copy `poly-header.vim` to your `~/.vim/plugin` folder. Set $USER and $MAIL <br />
As a simple fix, you may add the line to your shell profile
```
# working command example
git clone https://github.com/polyprogrammingclub/vim-poly-header
cd vim-poly-header
cp plugin/poly-header.vim ~/.vim/plugin

# MAIL environment var change for the lazy
# replace "myaddress@floridapoly.edu" with your email address
echo "export MAIL=\"myaddress@floridapoly.edu\"" >> ~/.cshrc
echo "export MAIL=\"myaddress@floridapoly.edu\"" >> ~/.zshrc
echo "export MAIL=\"myaddress@floridapoly.edu\"" >> ~/.bashrc

# in ssh when working in ember
echo "export MAIL=\"$(whoami)@floridapoly.edu\"" >> ~/.bashrc
```

### vim-plug
If you use vim-plug or any other plugin manager, simply add this line to your
plugin initialization:

```vim
Plug 'vim-poly-header/vim-poly-header'
```

## Acknowledgements
[pbondoer@42.fr](pbondoer@42.fr), for creating the header! <br />
[vim-42header](https://github.com/pbondoer/vim-42header), the improved original <br />
[42.fr](https://www.42.fr) <br />
[42.us](https://www.42.us.org/) <br />
