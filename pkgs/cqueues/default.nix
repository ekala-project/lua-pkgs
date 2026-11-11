{
  buildLuarocksPackage,
  fetchurl,
  lua,
  openssl,
  m4,
}:
buildLuarocksPackage {
  pname = "cqueues";
  version = "20200726.52-0";
  knownRockspec =
    (fetchurl {
      url = "mirror://luarocks/cqueues-20200726.52-0.rockspec";
      sha256 = "0w2kq9w0wda56k02rjmvmzccz6bc3mn70s9v7npjadh85i5zlhhp";
    }).outPath;
  src = fetchurl {
    url = "https://github.com/wahern/cqueues/archive/rel-20200726.tar.gz";
    sha256 = "0lhd02ag3r1sxr2hx847rdjkddm04l1vf5234v5cz9bd4kfjw4cy";
  };

  disabled = lua.luaversion != "5.2";

  externalDeps = [
    {
      name = "CRYPTO";
      dep = openssl;
    }
    {
      name = "OPENSSL";
      dep = openssl;
    }
  ];
  nativeBuildInputs = [ m4 ];

  meta = {
    homepage = "http://25thandclement.com/~william/projects/cqueues.html";
    license.fullName = "MIT/X11";
    description = "Continuation Queues: Embeddable asynchronous networking, threading, and notification framework for Lua on Unix.";
  };
}
