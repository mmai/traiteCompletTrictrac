{ pkgs, ... }:
let
  pythonPackages = pkgs.python3Packages;
in
{
  packages = [
    pkgs.python312Packages.mkdocs
    pkgs.python312Packages.mkdocs-material

    pkgs.imagemagick # to convert svg to png
    # pkgs.calibre # for tests : epub viewer
    (
      pythonPackages.buildPythonPackage rec {
        pname = "material_plausible_plugin";
        version = "0.2.0";
        format = "wheel";
        src = pythonPackages.fetchPypi rec {
          inherit pname version format;
          sha256 = "b7dc866b358475d940c5c61f56f86c400b9c1e73ffa2b06819207df38f34fcf4";
          dist = python;
          python = "py3";
          #abi = "none";
          #platform = "any";
        };

      })
  ];
}
