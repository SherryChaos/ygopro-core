project "ocgcore"
    kind "SharedLib"
    language "C++"

    files { "*.cpp", "*.h" }
    includedirs { "../lua/src" }
    links { "lua" }

    filter "not action:vs*"
        cppdialect "C++14"

    filter "action:vs*"
        cdialect "C11"
        conformancemode "On"
        buildoptions { "/utf-8" }
        defines { "_CRT_SECURE_NO_WARNINGS" }

    filter "system:bsd"
        defines { "LUA_USE_POSIX" }

    filter "system:macosx"
        defines { "LUA_USE_MACOSX" }
        buildoptions { "-fPIC" }

    filter "system:linux"
        defines { "LUA_USE_LINUX" }
        buildoptions { "-fPIC" }
        pic "On"
