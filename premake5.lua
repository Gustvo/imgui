project "imgui"
  kind "StaticLib"
  language "C++"
  cppdialect "C++17"

  objdir("obj/%{prj.name}" .. outputDir)

  files {
    "*.cpp",
    "*.h"
  }

  targetdir("bin/%{prj.name}" .. outputDir)

  filter "configurations:*64"
    architecture "x86_64"

  filter "configurations:*32"
    architecture "x86"

  filter "configurations:Debug*"
    runtime "Debug"
    symbols "on"

  filter "configurations:Release*"
    runtime "Release"
    optimize "On"

  filter "system:linux"
    pic "On"
