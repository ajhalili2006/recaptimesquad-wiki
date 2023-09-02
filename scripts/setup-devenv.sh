#!/usr/bin/env bash
set -xe

devboxWrapper() {
  if command -v devbox >> /dev/null; then
    devbox run -- $*
  else
    echo "devbox not installed, running command '$*' directly"
    $*
  fi
}

if ! command -v pipenv >> /dev/null; then
  devboxWrapper pip install --user pipenv
fi

devboxWrapper npm install
devboxWrapper pipenv install