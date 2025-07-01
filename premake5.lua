project "ocgcore"
    kind "SharedLib"

    files { "*.cpp", "*.h" }
    includedirs { "../lua/src" }
    
    filter "not action:vs*"
        cppdialect "C++14"

    filter "system:bsd"
        defines { "LUA_USE_POSIX" }

    filter "system:macosx"
        defines { "LUA_USE_MACOSX" }
        buildoptions { "-fPIC" }

    filter "system:linux"
        defines { "LUA_USE_LINUX" }
        buildoptions { "-fPIC" }
