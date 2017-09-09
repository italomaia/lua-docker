FROM debian:stretch-slim
MAINTAINER Italo Maia <italo.maia@gmail.com>

ARG LUA_PKG

RUN apt-get update -y && apt-get install -y\
    ${LUA_PKG}\
    luarocks