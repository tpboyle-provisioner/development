#!/bin/bash

# Get current directory
DEV_TOOLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"


# SOURCES

source "$DEV_TOOLS_DIR/dotfiles.sh"
source "$DEV_TOOLS_DIR/fzf.sh"
source "$DEV_TOOLS_DIR/git.sh"
source "$DEV_TOOLS_DIR/tmux.sh"
source "$DEV_TOOLS_DIR/vim.sh"


# INTERFACE

ensure_all_development_tools_are_provisioned () {
  ensure_dotfiles_are_provisioned
  ensure_git_is_provisioned
  ensure_vim_is_installed
  ensure_tmux_is_installed
  ensure_fzf_is_installed
}
