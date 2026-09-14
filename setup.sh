#!/usr/bin/env bash
set -e

if command -v python3 >/dev/null 2>&1; then
  echo "python3 already available: $(python3 --version)"
else
  if command -v apt-get >/dev/null 2>&1; then
    apt-get update -y && apt-get install -y python3 python3-pip
  elif command -v apk >/dev/null 2>&1; then
    apk add --no-cache python3 py3-pip
  elif command -v yum >/dev/null 2>&1; then
    yum install -y python3 python3-pip
  elif command -v dnf >/dev/null 2>&1; then
    dnf install -y python3 python3-pip
  else
    echo "No supported package manager found (apt-get/apk/yum/dnf); cannot install python3" >&2
    exit 1
  fi
fi

if [ -f requirements.txt ]; then
  python3 -m pip install --user -r requirements.txt
fi
