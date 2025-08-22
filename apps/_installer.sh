
source "apps/essentials.sh"
source "apps/git.sh"
source "apps/vim.sh"
source "apps/python.sh"
source "apps/tmux.sh"
source "apps/dotfiles.sh"

all_development_apps_are_provisioned () {
  ensure_build_essentials_are_installed
  ensure_git_is_provisioned
  ensure_vim_is_installed
  ensure_tmux_is_installed
  ensure_python_is_installed
  ensure_dotfiles_are_provisioned
}
