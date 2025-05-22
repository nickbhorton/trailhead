-- premake5.lua
workspace("trailhead")
    architecture("x64")
    configurations({
        "Debug",
    })
    location("build")
    cppdialect("C++20")

project("trailhead")
    location("build/trailhead_lib")
    kind("StaticLib")
    language("C++")

    targetdir("build/bin/%{cfg.buildcfg}_%{cfg.system}_%{cfg.architecture}/%{prj.name}")
    files({
        "trailhead/**.h",
        "trailhead/**.cpp",
    })

    filter("configurations:Debug")
        defines({"FLO_DEBUG"})
        symbols("On")
