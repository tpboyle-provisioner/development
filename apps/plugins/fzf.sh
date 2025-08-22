
source "src/packages/apt.sh"

ensure_fzf_is_installed () {
  apt_ensure_package_is_installed fzf
}

