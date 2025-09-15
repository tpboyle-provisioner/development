#!/bin/bash


# CONFIG

DOTFILES_DIR="/home/$USER/.dotfiles"


# INTERFACE

ensure_dotfiles_are_provisioned () {
  ensure_dotfiles_are_installed
  ensure_dotfiles_are_latest
  run_dotfiles_linker
}


# IMPLEMENTATION

ensure_dotfiles_are_installed () {
  if ! dotfiles_are_installed; then
    install_dotfiles
  fi
}

dotfiles_are_installed () {
  test -d "$DOTFILES_DIR/.git"
}

install_dotfiles () {
  if dotfiles_repo_is_defined; then
    info "dotfiles" "Cloning dotfiles repo from '$DOTFILES_REPO'..."
    mkdir "$DOTFILES_DIR"
    git clone "$DOTFILES_REPO" "$DOTFILES_DIR" &> /dev/null
  else
    warn "dotfiles" "DOTFILES_REPO is not defined in the conf.sh file! Cannot clone the dotfiles repo."
  fi
}

dotfiles_repo_is_defined () {
  declare -p DOTFILES_REPO &> /dev/null
}

ensure_dotfiles_are_latest () {
  cd "$DOTFILES_DIR"
  git pull &> /dev/null
  cd - &> /dev/null
}

run_dotfiles_linker () {
  info "dotfiles" "Running dotfiles linker @ $DOTFILES_DIR/link.sh..."
  "$DOTFILES_DIR/link.sh"
}
