# freelens-flatpak

[![Home](https://img.shields.io/badge/%F0%9F%8F%A0-freelens.app-02a7a0)](https://freelens.app)
[![release](https://img.shields.io/github/v/release/freelensapp/freelens?display_name=tag&sort=semver)](https://github.com/freelensapp/freelens/releases/latest)
[![Flathub Version](https://img.shields.io/flathub/v/app.freelens.Freelens)](https://flathub.org/apps/app.freelens.Freelens)

The [flatpak](https://flathub.org/) package for
[Freelens](https://github.com/freelensapp/freelens).

## Usage

```sh
flatpak install flathub app.freelens.Freelens
flatpak run app.freelens.Freelens
```

Note specific to Flatpak:

The application is sandboxed. It includes bundled `kubectl` and `helm`
commands and uses the `~/.kube/config` file by default.

Flatpak adds wrappers for the `aws`, `doctl`, `gke-gcloud-auth-plugin`, and
`kubelogin` tools, running them as commands from the host system.

The terminal uses `/bin/sh` by default, but it can be switched to, for
example, `/bin/bash` for a sandboxed environment or `/app/bin/host-spawn` for
a host environment.
