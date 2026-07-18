{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luarocks-build-tree-sitter-cli,
}:
buildLuarocksPackage {
  pname = "tree-sitter-cli";
  version = "0.26.8-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/tree-sitter-cli-0.26.8-1.rockspec";
      sha256 = "01gkqv1nlp8sjlljb7hkj2rq41dc9dfdbamzsg80n6855ynhj8nx";
    }).outPath;
  src = fetchFromGitHub {
    owner = "FourierTransformer";
    repo = "tree-sitter-cli";
    rev = "20947767690a1e81141c8ae4618cee80280861de";
    hash = "sha256-Dqhf7qfDyddaxuenPDpZsAuY3e5X9eXNISUslI5KDs4=";
  };

  nativeBuildInputs = [ luarocks-build-tree-sitter-cli ];

  meta = {
    homepage = "https://github.com/FourierTransformer/tree-sitter-cli";
    license.fullName = "MIT";
    description = "Install tree-sitter CLI binaries";
  };
}
