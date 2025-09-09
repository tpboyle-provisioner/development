#!/bin/bash

# Get current directory
DEV_APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "$DEV_APPS_DIR/build_essentials.sh"
source "$DEV_APPS_DIR/python.sh"

source "$DEV_APPS_DIR/tools/dotfiles.sh"
source "$DEV_APPS_DIR/tools/fzf.sh"
source "$DEV_APPS_DIR/tools/git.sh"
source "$DEV_APPS_DIR/tools/tmux.sh"
source "$DEV_APPS_DIR/tools/vim.sh"


# INTERFACE

all_development_apps_are_provisioned () {
  ensure_all_build_essentials_are_installed
  ensure_all_development_tools_are_provisioned
}


# IMPLEMENTATION

ensure_all_build_essentials_are_installed () {
  ensure_build_essentials_are_installed
  ensure_python_is_installed
}

ensure_all_development_tools_are_provisioned () {
  ensure_dotfiles_are_provisioned
  ensure_git_is_provisioned
  ensure_vim_is_installed
  ensure_tmux_is_installed
  ensure_fzf_is_installed
}
