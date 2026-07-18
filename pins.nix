{
  core = ../core-pkgs;
  # core = builtins.fetchGit {
  #   url = "git@github.com:ekala-project/corepkgs.git";
  #   rev = "d3b2c1dfdea50ed87a8a06b25095a8692d44b4c6";
  # };

  lib = builtins.fetchGit {
    url = "https://github.com/ekala-project/nix-lib.git";
    rev = "9acd37c8934331a3e53a099f8755101bc2a149e2";
  };
}
