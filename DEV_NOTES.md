# Developer notes

* docker run -it -v ~/code:/code ubuntu:16.04
* apt install lua5.1 zip
* Run `eval $(luarocks path --bin)` before ci/run.sh (to set PATH, LUA_PATH and LUA_CPATH)
* rename / fix version of rockspec (luarocks new_version?)
* luarocks make
* luarocks pack kong-enhanced-oidc {version}
