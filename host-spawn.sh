#!/bin/bash

# host-spawn starts the command on the host in the current directory. Freelens
# runs the exec plugins of a kubeconfig in the directory of that file, which is
# under /run/flatpak/doc when it was added through the file chooser, a path
# the host does not have, so the command would fail to start there.
if [[ $PWD == /run/flatpak/* ]]; then
  cd "$HOME" || exit
fi

# host-spawn passes only TERM and PWD to the host, so the env of an exec plugin
# in the kubeconfig, such as AWS_PROFILE, would be lost. Only the variables of
# the wrapped tools go through: the rest of the environment of the sandbox,
# such as PATH or the XDG directories, would break the command on the host.
# KUBERNETES_EXEC_INFO carries the cluster to an exec plugin that asks for it.
env_vars=TERM,PWD
names=$(compgen -e)
while read -r name; do
  case $name in
  AWS_* | GRANTED_* | DIGITALOCEAN_* | CLOUDSDK_* | GOOGLE_* | GITLAB_* | GLAB_* | AAD_* | AZURE_* | SCW_* | KUBERNETES_EXEC_INFO)
    env_vars+=",$name"
    ;;
  *) ;;
  esac
done <<<"$names"

host-spawn -env "$env_vars" "$(basename "$0")" "$@"
