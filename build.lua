local cmd = "docker build . -t italomaia/lua:%s --build-arg LUA_PKG=%s"
for name, pkg in pairs {
    ['lua51']='lua5.1',
    ['lua52']='lua5.2',
    ['lua53']='lua5.3',
    ['luajit']='luajit'
} do
    os.execute(string.format(cmd, name, pkg))
end