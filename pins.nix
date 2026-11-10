{
  core = builtins.fetchGit {
    url = "https://github.com/ekala-project/corepkgs.git";
    rev = "d42eedf53274274d7bb9666071a8eecaa3dae5a0";
  };

  lib = builtins.fetchGit {
    url = "https://github.com/ekala-project/nix-lib.git";
    rev = "9acd37c8934331a3e53a099f8755101bc2a149e2";
  };
}
