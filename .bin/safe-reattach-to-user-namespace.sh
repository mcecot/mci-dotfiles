#!/usr/bin/env bash

if [ -n "$(command -v reattach-to-user-namespace)" ]; then
  reattach-to-user-namespace $@
else
  exec "$@"
fi