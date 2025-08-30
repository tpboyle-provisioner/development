
source "src/packages/apt.sh"

ensure_fzf_is_installed () {
  if ! fzf_is_installed; then
    install_fzf
  fi
}

fzf_is_installed () {
  test -d ~/.fzf/bin
}

install_fzf () {
  info "fzf" "Installing fzf..."
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install --key-bindings --completion --no-update-rc
}
