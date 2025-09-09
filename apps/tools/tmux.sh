#!/bin/bash


# SOURCES

source "src/packages/apt.sh"


# INTERFACE

ensure_tmux_is_installed () {
  apt_ensure_package_is_installed tmux
  ensure_tmuxify_is_installed
}


# IMPLEMENTATION

ensure_tmuxify_is_installed () {
  if ! tmuxify_is_installed; then
    install_tmuxify
  fi
}

tmuxify_is_installed () {
  ls /usr/local/bin | grep -q tmuxify
}

install_tmuxify () {
  info "tmux" "Installing tmuxify..."
  cd /tmp
  wget https://raw.githubusercontent.com/tonchis/tmuxify/v1.2.1/bin/tmuxify &> /dev/null
  chmod +x tmuxify
  sudo mv tmuxify /usr/local/bin
  cd -
}
