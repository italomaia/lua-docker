local cmd = "docker build . -t %s/lua-%s:%s -f %s --build-arg LUA_VER=%s --build-arg DISTRO_VER=%s"
local user = os.getenv("USER")

for _, lua_ver in pairs {
    'jit',
    '5.1',
    '5.2',
    '5.3',
} do
    for dockerfile in io.popen("ls Dockerfile.*"):lines() do
        local distro = string.gsub(dockerfile, "Dockerfile.", "")

        if arg[1] == distro then
            os.execute(string.format(cmd, user, distro, lua_ver, dockerfile, lua_ver, arg[2] or 'latest'))
        end
    end
end