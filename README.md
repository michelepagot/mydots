# My vimrc and other tricks
Yes it is time for me to add vim arrow to my quiver. This vimrc has to work on both Linux and Windows (Conemu). It has possibly to work with both vim7.4 and vim8 and properly handle core builds with and without external language support... so a lot of fun

## Fonts
```
# Create it if it does not exixt
mkdir ~/.local/share/fonts
cd ~/.local/share/fonts

# select and get them from https://www.nerdfonts.com/font-downloads
curl -fLo "FiraCode.zip" https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip\n

#unzip and remove the archive
unzip FiraCode.zip && rm FiraCode.zip
``` 
