
source "src/packages/apt.sh"

ensure_python_is_installed () {
  apt_ensure_package_is_installed python3
}
