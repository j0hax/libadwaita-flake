{ pkgs, stdenv, meson, libadwaita, ninja, pkg-config }:

stdenv.mkDerivation {
  name = "gtk-test";
  src = ./src;
  buildInputs = [ meson libadwaita ninja pkg-config ];
  installPhase = ''
    mkdir -p $out/bin
    mv libadwaita-flake $out/bin
  '';
}
