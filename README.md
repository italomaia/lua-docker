Simple docker image for lua. 

## Variables

* DISTRO_VER **latest** -- version of the distro
* LUA_VER **5.3** -- version of lua
* LUAROCKS_VER **3.0.4** -- only available for alpine

## Building

docker build . -t <IMAGE>/<NAME>:<VERSION> -f Dockerfile.<DISTRO>
