#!/bin/sh

# Usage: curl -s https://raw.githubusercontent.com/ta/dotfiles/master/install.sh | sh

echo "Installing dofiles!"

( cd /tmp && \
  git clone -q git@github.com:ta/dotfiles.git && \
  cd dotfiles && \
  rm -rf /tmp/dotfiles/.git /tmp/dotfiles/install.sh
  for X in `ls -A`
  do
	  mv -v $X ~/$X
  done
  rm -rf /tmp/dotfiles ) && \
echo "Done!"
