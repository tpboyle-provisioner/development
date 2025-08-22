
source "src/packages/apt.sh"

ensure_build_essentials_are_installed () {
  apt_ensure_package_is_installed curl
  apt_ensure_package_is_installed wget
  apt_ensure_package_is_installed build-essential
  apt_ensure_package_is_installed ca-certificates
  apt_ensure_package_is_installed gnupg
  apt_ensure_package_is_installed software-properties-common
}
