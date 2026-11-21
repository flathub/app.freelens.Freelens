# freelens-flatpak

[![Home](https://img.shields.io/badge/%F0%9F%8F%A0-freelens.app-02a7a0)](https://freelens.app)
[![release](https://img.shields.io/github/v/release/freelensapp/freelens?display_name=tag&sort=semver)](https://github.com/freelensapp/freelens/releases/latest)
[![Flathub Version](https://img.shields.io/flathub/v/app.freelens.Freelens)](https://flathub.org/apps/app.freelens.Freelens)
[![Flathub Downloads](https://img.shields.io/flathub/downloads/app.freelens.Freelens)](https://flathub.org/apps/app.freelens.Freelens)

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

Flatpak adds wrappers for the `assume`, `aws`, `doctl`,
`gke-gcloud-auth-plugin`, `glab`, `kubelogin` and `scw` tools, running them as
commands from the host system. They get the variables of these tools from the
environment, such as `AWS_PROFILE` from the `env` of an exec plugin in the
kubeconfig, but no other variables of the sandbox.

The terminal uses `/bin/sh` by default, but it can be switched to, for
example, `/bin/bash` for a sandboxed environment or `/app/bin/host-spawn` for
a host environment.

## Updates

A new release of Freelens comes as a pull request from
[freelensapp/freelens-flatpak](https://github.com/freelensapp/freelens-flatpak),
which updates the `freelens.deb` sources and the release in the metainfo.
