#!/bin/sh

if ! command -v zsh &> /dev/null
then
  echo "zsh is not installed."
  exit
fi

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &> /dev/null

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/rupa/z.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/z

cp .p10k.zsh $HOME/.p10k.zsh
cp .zshrc $HOME/.zshrc

source $HOME/.zshrc
