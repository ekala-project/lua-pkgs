{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "luarocks-build-tree-sitter-cli";
  version = "0.0.3-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luarocks-build-tree-sitter-cli-0.0.3-1.rockspec";
      sha256 = "0yy04svrll85zn334mhhnzzdqymsbiqymnr6iaj23h436v3gcq38";
    }).outPath;
  src = fetchFromGitHub {
    owner = "FourierTransformer";
    repo = "luarocks-build-tree-sitter-cli";
    tag = "0.0.3";
    hash = "sha256-Chc0eKvKyL9JM6MNX5GcRes1YA2+W842NDrX1nNMQ+E=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/FourierTransformer/luarocks-build-tree-sitter-cli";
    license.fullName = "MIT";
    description = "A LuaRocks build backend to install the tree-sitter CLI";
  };
}
