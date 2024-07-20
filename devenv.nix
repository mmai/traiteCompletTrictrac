{ pkgs, ... }:
# { pkgs, stdenv, ... }:
{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.mkdocs
    pkgs.python312Packages.mkdocs-material
    pkgs.imagemagick # to convert svg to png
    # pkgs.calibre # for tests : epub viewer
  ];
}
