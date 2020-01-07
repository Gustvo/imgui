Project "imgui"
  kind "StaticLib"
  language "C++"
  buildoptions { "-std=c++17" }
  
  outputdir = outputDir
  
  objdir("obj/" .. outputDir .. project().name .. "/")
  targetdir("bin/" .. outputDir .. project().name .. "/debug")
  
  files {
    "*.cpp",
    "*.h"
  }
  
  configuration "Debug"
    flags { "StaticRuntime", "Symbols", "ExtraWarnings" }
    
  configuration "Release"
    flags { "StaticRuntime", "OptimizeSpeed", "FatalWarnings" }
