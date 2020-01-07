Project "imgui"
  kind "StaticLib"
  language "C++"
  buildoptions { "-std=c++17" }
  
  objdir("obj/" .. outputDir .. project().name .. "/")
  
  files {
    "*.cpp",
    "*.h"
  }
  
  configuration "Debug"
    targetdir("bin/" .. outputDir .. project().name .. "/debug")
    flags { "StaticRuntime", "Symbols", "ExtraWarnings" }
    
  configuration "Release"
    targetdir("bin/" .. outputDir .. project().name .. "/release")
    flags { "StaticRuntime", "OptimizeSpeed", "FatalWarnings" }
