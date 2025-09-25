#!/bin/bash


# INTERFACE

ensure_git_is_provisioned () {
  apt_ensure_package_is_installed git
}
