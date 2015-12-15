#!/usr/bin/env bash

set -o errexit

for formula in *.rb; do
  brew audit --strict "$formula"
  brew install "$formula"
  brew test "$formula"
done
