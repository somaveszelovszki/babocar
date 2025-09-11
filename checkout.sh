#!/usr/bin/env bash
set -euo pipefail

git submodule update --init --recursive

git submodule foreach '
  echo "Updating $name in $path"
  git fetch origin
  git checkout master || echo "⚠️ Could not checkout master in $name"
  git pull origin master || echo "⚠️ Could not pull master in $name"
'
