#!/bin/bash


# HELPERS

configure_git_user () {
  configure_git_user_name
  configure_git_user_email
}

configure_git_user_name () {
  git config --global --replace-all user.name "$GIT_NAME"
}

configure_git_user_email () {
  git config --global --replace-all user.email "$GIT_EMAIL"
}


# ACTIONS

configure_git () {
  configure_git_user
}


# STATES

git_is_installed () {
  apt_ensure_package_is_installed git
}

git_is_configured () {
  configure_git
}


# INTERFACE

ensure_git_is_provisioned () {
  git_is_installed
  git_is_configured
}

