#!/bin/bash

source "src/packages/apt.sh"

ensure_build_essentials_are_installed () {
  apt_ensure_packages_are_installed \
    curl \
    wget \
    build-essential \
    ca-certificates \
    gnupg \
    software-properties-common
}
