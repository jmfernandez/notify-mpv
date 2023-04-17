-- luarocks-setup.lua
-- See https://martin-fieber.de/blog/lua-project-setup-with-luarocks/
local version = _VERSION:match("%d+%.%d+")

function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)") or "./"
end

basedir = script_path()

package.path = basedir .. 'lua_modules/share/lua/' .. version ..
    '/?.lua;' .. basedir .. 'lua_modules/share/lua/' .. version ..
    '/?/init.lua;' .. package.path
package.cpath = basedir .. 'lua_modules/lib/lua/' .. version ..
    '/?.so;' .. package.cpath
