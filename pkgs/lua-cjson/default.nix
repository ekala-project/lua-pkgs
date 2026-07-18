{
  buildLuarocksPackage,
  fetchurl,
  fetchFromGitHub,
  luaOlder,
}:

buildLuarocksPackage {
  pname = "lua-cjson";
  version = "2.1.0.10-1";

  knownRockspec = (fetchurl {
    url = "mirror://luarocks/lua-cjson-2.1.0.10-1.rockspec";
    sha256 = "05sp7rq72x4kdkyid1ch0yyscwsi5wk85d2hj6xwssz3h8n8drdg";
  }).outPath;

  src = fetchFromGitHub {
    owner = "openresty";
    repo = "lua-cjson";
    tag = "2.1.0.10";
    hash = "sha256-/SeQro0FaJn91bAGjsVIin+mJF89VUm/G0KyJkV9Qps=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "http://www.kyne.com.au/~mark/software/lua-cjson.php";
    description = "A fast JSON encoding/parsing module";
    license.fullName = "MIT";
  };
}
