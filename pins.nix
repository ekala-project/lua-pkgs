{
  core = builtins.fetchGit {
    url = "https://github.com/ekala-project/corepkgs.git";
    rev = "e4dd52af6f6329bffc97ec5ec782b5b30037f701";
  };

  lib = builtins.fetchGit {
    url = "https://github.com/ekala-project/nix-lib.git";
    rev = "9acd37c8934331a3e53a099f8755101bc2a149e2";
  };
}
