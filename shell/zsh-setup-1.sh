#!/bin/sh

if ! command -v zsh &> /dev/null
then
  echo "zsh is not installed."
  exit
fi

# install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
