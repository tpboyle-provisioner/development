#!/bin/bash

source "src/packages/apt/packages.sh"

ensure_python_is_installed () {
  apt_ensure_packages_are_installed \
    python3 \
    python-is-python3
}
