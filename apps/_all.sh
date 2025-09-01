
# Get current directory
DEV_APPS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$DEV_APPS_DIR/essentials.sh"
source "$DEV_APPS_DIR/git.sh"
source "$DEV_APPS_DIR/vim.sh"
source "$DEV_APPS_DIR/python.sh"
source "$DEV_APPS_DIR/tmux.sh"
source "$DEV_APPS_DIR/dotfiles.sh"
source "$DEV_APPS_DIR/fzf.sh"

all_development_apps_are_provisioned () {
  ensure_build_essentials_are_installed
  ensure_git_is_provisioned
  ensure_vim_is_installed
  ensure_tmux_is_installed
  ensure_python_is_installed
  ensure_dotfiles_are_provisioned
  ensure_fzf_is_installed
}
