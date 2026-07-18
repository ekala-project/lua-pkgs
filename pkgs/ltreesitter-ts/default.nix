{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
}:
buildLuarocksPackage {
  pname = "ltreesitter-ts";
  version = "0.0.1-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/ltreesitter-ts-0.0.1-1.rockspec";
      sha256 = "064nn3h6wi8z5ply35ig78jjkpy527nc5qxisbkvv8s3s345h82r";
    }).outPath;
  src = fetchFromGitHub {
    owner = "FourierTransformer";
    repo = "ltreesitter-ts";
    tag = "0.0.1";
    hash = "sha256-HFBOYFadw+lwQYk39vrFtAn/HGjfXzCxjN1RLBp4yKA=";
  };

  meta = {
    homepage = "https://github.com/FourierTransformer/ltreesitter-ts";
    license.fullName = "MIT";
    description = "Treesitter parsing library bindings for Lua";
  };
}
