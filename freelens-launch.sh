#!/bin/bash

EXTRA_ARGS+=(
  "--ozone-platform-hint=auto"
  "--enable-features=WebRTCPipeWireCapturer"
  "--enable-features=WaylandWindowDecorations"
  "--disable-gpu-compositing"
)

export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"

exec zypak-wrapper "/app/Freelens/freelens" "${EXTRA_ARGS[@]}" "$@"
