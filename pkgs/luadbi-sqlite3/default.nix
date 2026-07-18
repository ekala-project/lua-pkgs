{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaAtLeast,
  luaOlder,
  luadbi,
}:
buildLuarocksPackage {
  pname = "luadbi-sqlite3";
  version = "0.7.5-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/luadbi-sqlite3-0.7.5-1.rockspec";
      sha256 = "0gvc6p8cpkr500dc5kq6k38q3wc09z0aw3w3ialdvjv9jcq7dqlr";
    }).outPath;
  src = fetchFromGitHub {
    owner = "mwild1";
    repo = "luadbi";
    tag = "v0.7.5";
    hash = "sha256-KShn2FLRYf7oc0+jce2JIUePx+eRFeCq+K9EFXz5tU8=";
  };

  disabled = luaOlder "5.1" || luaAtLeast "5.5";
  propagatedBuildInputs = [ luadbi ];

  meta = {
    homepage = "https://github.com/mwild1/luadbi";
    license.fullName = "MIT/X11";
    description = "Database abstraction layer";
  };
}
