
source "src/packages/apt.sh"

VIM_PLUG_PATH="$HOME/.vim/autoload/plug.vim"
VIM_PLUG_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"

ensure_vim_is_installed () {
  apt_ensure_package_is_installed vim
  ensure_vim_plug_is_installed vim-plug
}

ensure_vim_plug_is_installed () {
  if ! vim_plug_is_installed; then
    install_vim_plug
  fi
}

vim_plug_is_installed () {
  test -f "$VIM_PLUG_PATH"
}

install_vim_plug () {
  info "vim" "Installing vim-plug..."
  mkdir -p ~/.vim/autoload
  download_vim_plug
  mv plug.vim ~/.vim/autoload/
}

download_vim_plug () {
  wget "$VIM_PLUG_URL" &> /dev/null
}

