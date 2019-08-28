local ROOT = "../"
-------------- wxWidgets o n --wxSQlite3 o n-------------
local wx1 = "D:/wxWidgets-3.1.2" -- cambiare se si usa un'altra versione
local sq1 = "n" -- wxSQlite3
VER = "31" -- cambiare se si usa un'altra versione
local STA32= "gcc_lib"
local STA64= "gcc_x64_lib"
local DIN32= "gcc_dll"
local DIN64= "gcc_x64_dll"
s1 = "-Wl,--start-group"
s2 = "-Wl,--end-group"
-------------- allegro o n -----------------
local allegro = "n" -- o "n"
--------------------------------------------
workspace "MyWorkspace"
   configurations { "DebugDinamic", "ReleaseDinamic", "DebugStatic", "ReleaseStatic" }
	platforms      { "x64", "x32" }
	project "Programma Archivio"
   kind "WindowedApp"
   targetname ("$(NOMPROG)")
   language "C++"
   --------------------------------------
    -- [ PROJECT FILES CONFIGURATIONS ] --
    --------------------------------------
    local SourceDir = ROOT .. "/"
    -- what files the visual studio project/makefile/etc should know about
    files
    { 
      -- all paths in premake can have * for wildcard.
      --     /Some/Path/*.txt     will find any .txt file in /Some/Path
      --     /Some/Path/**.txt    will find any .txt file in /Some/Path and any of its subdirectories
      SourceDir .. "*.h", 
      SourceDir .. "*.hpp", 
      SourceDir .. "*.c",
      SourceDir .. "*.cpp",
      SourceDir .. "*.rc"
    }
   filter { "configurations:DebugDinamic", "platforms:*32" }
	  resoptions { "-F pe-i386" }
	  defines { "D__WXDEBUG__", "HAVE_W32API_H", "__WXMSW__", "_UNICODE", "DWXUSINGDLL" }
      symbols "On"
	  architecture "x86"
	  if not (wx1=="n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN32 .."/mswud",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN32 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. DIN32 ..""
	 end
    }  
   dofile "libwx.lua"
   end
    buildoptions { "-O0", "-Wall", "-std=gnu++11" }
    
	filter { "configurations:DebugDinamic", "platforms:*64" }
 	  defines { "D__WXDEBUG__", "HAVE_W32API_H", "__WXMSW__", "_UNICODE", "DWXUSINGDLL" }
      symbols "On"
	  architecture "x64"
	  if not (wx1=="n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN64 .."/mswud",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN64 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. DIN64 ..""
	 end
    }  
   dofile "libwx.lua"
   end
    buildoptions {"-O0", "-Wall", "-std=gnu++11" }
	         
   filter { "configurations:ReleaseDinamic", "platforms:*32" }
	  resoptions { "-F pe-i386" }
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE", "DWXUSINGDLL" }
      optimize "On"
	  architecture "x86"
     if not (wx1=="n") then
	 includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN32 .."/mswu",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN32 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. DIN32 ..""
	 end
    }  
   dofile "libwx.lua"
   end
    buildoptions {"-Wall", "-std=gnu++11" }
   filter { "configurations:ReleaseDinamic", "platforms:*64" }
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE", "DWXUSINGDLL" }
      optimize "On"
	  architecture "x64" 
	  if not (wx1=="n") then
	  includedirs
      {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN64 .."/mswu",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN64 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. DIN64 ..""
	 end
    }  
   dofile "libwx.lua"
   end
   	buildoptions { "-Wall", "-std=gnu++11" }
	
	filter { "configurations:DebugStatic", "platforms:*32" }
	  resoptions { "-F pe-i386" }
	  defines { "D__WXDEBUG__", "HAVE_W32API_H", "__WXMSW__", "_UNICODE"}
      symbols "On"
	  architecture "x86"
	 if not (wx1=="n") then
	 includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA32 .."/mswud",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA32 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. STA32 ..""
	 end
    }  
   dofile "libwx.lua"
   end
    buildoptions { "-O0", "-Wall", "-std=gnu++11" }
    
	filter { "configurations:DebugStatic", "platforms:*64" }
 	  defines { "D__WXDEBUG__", "HAVE_W32API_H", "__WXMSW__", "_UNICODE" }
      symbols "On"
	  architecture "x64"
	  if not (wx1=="n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA64 .."/mswud",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA64 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. STA64 ..""
	 end
    }  
   dofile "libwx.lua"
   end
    buildoptions { "-O0", "-Wall", "-std=gnu++11" }
	         
   filter { "configurations:ReleaseStatic", "platforms:*32" }
	  resoptions { "-F pe-i386" }
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE" }
      optimize "On"
	  architecture "x86"
	  if not (wx1=="n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA32 .."/mswu",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	
	libdirs
    {
     wx1 .. "/lib/" .. STA32 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. STA32 ..""
	 end
	}  
   
   dofile "libwx.lua"
   
   end
   
   buildoptions { "-Wall", "-std=gnu++11" }
    
   filter { "configurations:ReleaseStatic", "platforms:*64" }
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE" }
      optimize "On"
	  architecture "x64" 
	  if not (wx1=="n") then
	  includedirs
      {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA64 .."/mswu",
	 if not (sq1=="n") then
	 sq1 .. "/include"
	 end
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA64 .."",
	 if not (sq1=="n") then
	 sq1 .. "/lib/" .. STA64 ..""
	 end
    }  
   dofile "libwx.lua"
   end
	buildoptions { "-Wall", "-std=gnu++11" }
		   
   filter {}
