{
  buildLuarocksPackage,
  fetchurl,
  luaAtLeast,
  luaOlder,
  luaposix,
  pkgs,
}:

let
  # Take the system library from the top-level set: in this scope `readline`
  # resolves to this Lua package itself, which causes infinite recursion.
  inherit (pkgs) readline;
in

# upstream broken, can't be generated, so moved out from the generated set
buildLuarocksPackage {
  pname = "readline";
  version = "3.2-0";

  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/readline-3.2-0.rockspec";
      sha256 = "1r0sgisxm4xd1r6i053iibxh30j7j3rcj4wwkd8rzkj8nln20z24";
    }).outPath;

  src = fetchurl {
    url = "http://pjb.com.au/comp/lua/readline-3.2.tar.gz";
    sha256 = "1mk9algpsvyqwhnq7jlw4cgmfzj30l7n2r6ak4qxgdxgc39f48k4";
  };

  luarocksConfig.variables = rec {
    READLINE_INCDIR = "${readline.dev}/include";
    HISTORY_INCDIR = READLINE_INCDIR;
  };

  propagatedBuildInputs = [
    luaposix
    readline.out
  ];

  meta = {
    homepage = "https://pjb.com.au/comp/lua/readline.html";
    description = "Interface to the readline library";
    license.fullName = "MIT/X11";
    broken = (luaOlder "5.1") || (luaAtLeast "5.5");
  };
}
