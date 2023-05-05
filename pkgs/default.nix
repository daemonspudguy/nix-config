# Custom packages, that can be defined similarly to ones from nixpkgs
# You can build them using 'nix build .#example' or (legacy) 'nix-build -A example'

{ pkgs ? (import ../nixpkgs.nix) { } }: {
  # example = pkgs.callPackage ./example { };
pkgs = appimageTools.wrapType2 { # or wrapType1
  name = "protonup-qt";
  src = fetchurl {
    url = "https://github.com/DavidoTek/ProtonUp-Qt/releases/download/v2.8.0/ProtonUp-Qt-2.8.0-x86_64.AppImage";
    sha256 = "1blsprpkvm0ws9b96gb36f0rbf8f5jgmw4x6dsb1kswr4ysf591s";
  };
}
