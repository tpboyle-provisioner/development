#!/bin/bash


# INTERFACE

ensure_git_is_provisioned () {
  git_is_installed
  git_is_configured
}


# IMPLEMENTATION

git_is_installed () {
  apt_ensure_package_is_installed git
}

git_is_configured () {
  configure_git
}


# CONFIGURATION

configure_git () {
  configure_git_user
}

configure_git_user () {
  configure_git_user_name
  configure_git_user_email
}

configure_git_user_name () {
  if [[ "$GIT_NAME" == "" ]]; then
    warn "git" "Git's user.name in development/conf.sh is not set!"
    return 1
  fi
  git config --global --replace-all user.name "$GIT_NAME"
}

configure_git_user_email () {
  if [[ "$GIT_EMAIL" == "" ]]; then
    warn "git" "Git's user.email in development/conf.sh is not set!"
    return 1
  fi
  git config --global --replace-all user.email "$GIT_EMAIL"
}

