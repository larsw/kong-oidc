#!/bin/bash
set -e

export LUA_VERSION=${LUA_VERSION:-5.1}
export KONG_VERSION=${KONG_VERSION:-0.13.1-0}
export LUA_RESTY_OPENIDC_VERSION=${LUA_RESTY_OPENIDC_VERSION:-1.7.1-1}

pip install hererocks
hererocks lua_install -r^ --lua=${LUA_VERSION}
export PATH=${PATH}:${PWD}/lua_install/bin

luarocks install kong ${KONG_VERSION}
luarocks install lua-resty-openidc ${LUA_RESTY_OPENIDC_VERSION}
luarocks install lua-cjson
luarocks install luaunit
luarocks install luacov

curl -s -L -O https://github.com/bungle/lua-resty-random/archive/master.zip && unzip master.zip && rm -rf master.zip && mv /lua-resty-random-master/lib/resty/* /usr/local/share/lua/5.1/resty/ && \
