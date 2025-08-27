
# Get current directory
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$DIR/essentials.sh"
source "$DIR/git.sh"
source "$DIR/vim.sh"
source "$DIR/python.sh"
source "$DIR/tmux.sh"
source "$DIR/dotfiles.sh"
source "$DIR/fzf.sh"

all_development_apps_are_provisioned () {
  ensure_build_essentials_are_installed
  ensure_git_is_provisioned
  ensure_vim_is_installed
  ensure_tmux_is_installed
  ensure_python_is_installed
  ensure_dotfiles_are_provisioned
  ensure_fzf_is_installed
}
