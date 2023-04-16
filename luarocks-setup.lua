-- luarocks-setup.lua
-- See https://martin-fieber.de/blog/lua-project-setup-with-luarocks/
local version = _VERSION:match("%d+%.%d+")

package.path = 'lua_modules/share/lua/' .. version ..
    '/?.lua;lua_modules/share/lua/' .. version ..
    '/?/init.lua;' .. package.path
package.cpath = 'lua_modules/lib/lua/' .. version ..
    '/?.so;' .. package.cpath