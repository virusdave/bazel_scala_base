{ pkgs ? import ./nixpkgs.nix { config = {}; overlays = []; } }:

with pkgs;

let
 project_name = "anonymous";

in mkShell {
  buildInputs = [
    bazel_3
    cacert
    coreutils
    gcc
    gitFull
    nix
    openjdk8
    python3

    (xcbuild.override { sdkVer = "10.15"; })
    which
  ];

  name = "${project_name}-build-nix-shell";
}
