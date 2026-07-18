{
  buildLuarocksPackage,
  fetchFromGitHub,
  fetchurl,
  luaOlder,
}:
buildLuarocksPackage {
  pname = "nginx-lua-prometheus";
  version = "0.20240525-1";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/nginx-lua-prometheus-0.20240525-1.rockspec";
      sha256 = "0xw21h7bl7l8kijbmw98v0lc7910r5pwnx7h3w894dv63d413ixr";
    }).outPath;
  src = fetchFromGitHub {
    owner = "knyar";
    repo = "nginx-lua-prometheus";
    tag = "0.20240525";
    hash = "sha256-ovLpOQKgTfrrgCxCF/OtdPUuAQ9J4RtT9F68Bbzu1XQ=";
  };

  disabled = luaOlder "5.1";

  meta = {
    homepage = "https://github.com/knyar/nginx-lua-prometheus";
    license.fullName = "MIT";
    description = "Prometheus metric library for Nginx";
  };
}
