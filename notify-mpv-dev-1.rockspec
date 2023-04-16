-- imapfilter-jmfernandez-dev-1.rockspec
-- See https://martin-fieber.de/blog/lua-project-setup-with-luarocks/
rockspec_format = "3.0"
package = "notify-mpv"
version = "dev-1"
source = {
   url = "https://github.com/jmfernandez/notify-mpv.git"
}
description = {
   summary = "Mail scripts and rules to be used with imapfilter",
   homepage = "https://github.com/jmfernandez/notify-mpv",
   license = "as-is"
}
dependencies = {
   "lua == 5.1",
   "luajit >= 2.0.0",
   "luasocket"
}
build = {
   type = "builtin",
   modules = {
      main = "notify-mpv.lua"
   }
}
