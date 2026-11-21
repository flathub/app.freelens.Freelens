#!/bin/bash

# host-spawn starts the command on the host in the current directory. Freelens
# runs the exec plugins of a kubeconfig in the directory of that file, which is
# under /run/flatpak/doc when it was added through the file chooser, a path
# the host does not have, so the command would fail to start there.
if [[ $PWD == /run/flatpak/* ]]; then
  cd "$HOME" || exit
fi

host-spawn "$(basename "$0")" "$@"
