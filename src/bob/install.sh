#!/bin/sh
nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update
nix profile install github:benchkram/bob \
    --extra-experimental-features flakes \
    --extra-experimental-features nix-command \
    --extra-experimental-features auto-allocate-uids \
    --extra-experimental-features configurable-impure-env