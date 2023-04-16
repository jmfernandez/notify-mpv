#!/bin/bash

basedir="$(dirname "$BASH_SOURCE")"

lua_version=5.1

# https://martin-fieber.de/blog/lua-project-setup-with-luarocks/
if [ ! -d "${basedir}/.luarocks" ] ; then
        ( cd "${basedir}" && luarocks --lua-version "${lua_version}" init --lua-versions "${lua_version}" )
fi

echo "Installing dependencies"
( cd "${basedir}" && luarocks --lua-version "${lua_version}" install --only-deps notify-mpv-dev-1.rockspec )

