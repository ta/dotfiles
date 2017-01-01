#!/bin/sh

# Usage: curl -s https://raw.githubusercontent.com/ta/dotfiles/master/install.sh | sh

echo "Installing dotfiles!\n"

( cd /tmp && \
  GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no" \
  git clone -q git@github.com:ta/dotfiles.git && \
  cd dotfiles && \
  rm -rf /tmp/dotfiles/.git /tmp/dotfiles/install.sh && \
  for X in `ls -Ap`
  do
	  rsync -av "`pwd`/$X" "$HOME/$X"
  done && \
  rm -rf /tmp/dotfiles && \
  echo "\nDone!" )
