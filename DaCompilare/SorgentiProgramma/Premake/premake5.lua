local ROOT = "../"
-------------- wxWidgets o n ---------------
local wx1 = "C:/wxWidgets-3.1.x"
-------- versione wxWidgets-----------------
VER = "31"
-------------- wxsqlite o n ----------------
sq1 = "n"
--------------------------------------------
local nprog = "$(NOMPROG)"
local STA32= "gcc_lib"
local STA64= "gcc_x64_lib"
local DIN32= "gcc_dll"
local DIN64= "gcc_x64_dll"
-------------- allegro o n -----------------
local allegro = "n" -- o "n"
--------------------------------------------
workspace "MyWorkspace"
	configurations { "DebugDinamic", "ReleaseDinamic", "DebugStatic", "ReleaseStatic" }
	platforms      { "x64", "x32" }
	project ("Programma")
   kind "WindowedApp"
   targetname (nprog)
   language "C++"
   --------------------------------------
    -- [ PROJECT FILES CONFIGURATIONS ] --
    --------------------------------------
    local SourceDir = ROOT .. "/"
    -- what files the visual studio project/makefile/etc should know about
   	files
    { 
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
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN32 .."/mswud",
	 sq1 ..	"/include"
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN32 .."",
	 sq1 .. "/lib/" .. DIN32 ..""
    }
else
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN32 .."/mswud",
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN32 .."",
    }
end
   dofile "libwx.lua"
end
    buildoptions { "-O0", "-Wall", "-std=c++11" }
    filter {}
	filter { "configurations:DebugDinamic", "platforms:*64" }
 	  defines { "D__WXDEBUG__", "HAVE_W32API_H", "__WXMSW__", "_UNICODE", "DWXUSINGDLL" }
      symbols "On"
	  architecture "x64"
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN64 .."/mswud",
	 sq1 .. "/include"
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN64 .."",
	 sq1 .. "/lib/" .. DIN64 ..""
    }
else
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN64 .."/mswud",
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN64 .."",
    }
end
   dofile "libwx.lua"
end
    buildoptions {"-O0", "-Wall", "-std=c++11" }
	filter {}         
   filter { "configurations:ReleaseDinamic", "platforms:*32" }
	  resoptions { "-F pe-i386" }
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE", "DWXUSINGDLL" }
      optimize "On"
	  architecture "x86"
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	 includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN32 .."/mswu",
	 sq1 .. "/include"
	 }
	 libdirs
    {
     wx1 .. "/lib/" .. DIN32 .."",
	 sq1 .. "/lib/" .. DIN32 ..""
	 }
else
	 includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN32 .."/mswu",
	 }
	 libdirs
    {
     wx1 .. "/lib/" .. DIN32 .."",
	 }
end	 
	dofile "libwx.lua"
end	
   buildoptions {"-Wall", "-std=c++11" }
   filter {}
   filter { "configurations:ReleaseDinamic", "platforms:*64" }
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE", "DWXUSINGDLL" }
      optimize "On"
	  architecture "x64"
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	  includedirs
      {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN64 .."/mswu",
	 sq1 .. "/include"
	}
	libdirs
    {
     wx1 .. "/lib/" .. DIN64 .."",
	 sq1 .. "/lib/" .. DIN64 ..""
    }
else	
	  includedirs
      {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. DIN64 .."/mswu",
	 }
	libdirs
    {
     wx1 .. "/lib/" .. DIN64 .."",
	}
end
   dofile "libwx.lua"
end
   	buildoptions { "-Wall", "-std=c++11" }
	filter {}
	filter { "configurations:DebugStatic", "platforms:*32" }
	  resoptions { "-F pe-i386" }
	  linkoptions {"-static"}
	  defines { "D__WXDEBUG__", "HAVE_W32API_H", "__WXMSW__", "_UNICODE"}
      symbols "On"
	  architecture "x86"
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	 includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA32 .."/mswud",
	 sq1 .. "/include"
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA32 .."",
	 sq1 .. "/lib/" .. STA32 ..""
    }
else
	 includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA32 .."/mswud",
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA32 .."",
    }
end	
   dofile "libwx.lua"
end
    buildoptions { "-O0", "-Wall", "-std=c++11" }
    filter {}
	filter { "configurations:DebugStatic", "platforms:*64" }
 	  defines { "D__WXDEBUG__", "HAVE_W32API_H", "__WXMSW__", "_UNICODE" }
      symbols "On"
	  linkoptions {"-static"}
	  architecture "x64"
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA64 .."/mswud",
	 sq1 .. "/include"
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA64 .."",
	 sq1 .. "/lib/" .. STA64 ..""
    }
else
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA64 .."/mswud",
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA64 .."",
    }
end	
   dofile "libwx.lua"
end
    buildoptions { "-O0", "-Wall", "-std=c++11" }
	filter {}         
   filter { "configurations:ReleaseStatic", "platforms:*32" }
	  resoptions { "-F pe-i386" }
	  linkoptions {"-static"}
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE" }
      optimize "On"
	  architecture "x86"
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA32 .."/mswu",
	 sq1 .. "/include"
	}
	
	libdirs
    {
     wx1 .. "/lib/" .. STA32 .."",
	 sq1 .. "/lib/" .. STA32 ..""
	}  
else
	  includedirs
    {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA32 .."/mswu",
	}
	
	libdirs
    {
     wx1 .. "/lib/" .. STA32 .."",
	}
end	
   dofile "libwx.lua"
end
   buildoptions { "-Wall", "-std=c++11" }
   filter {} 
   filter { "configurations:ReleaseStatic", "platforms:*64" }
	  defines { "NDEBUG", "HAVE_W32API_H", "__WXMSW__", "_UNICODE" }
      optimize "On"
	  linkoptions {"-static"}
	  architecture "x64" 
if (wx1 ~= "n") then
if (sq1 ~= "n") then
	  includedirs
      {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA64 .."/mswu",
	 sq1 .. "/include"
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA64 .."",
	 sq1 .. "/lib/" .. STA64 ..""
    }
else
	  includedirs
      {
     wx1 .. "/include",
	 wx1 .. "/lib/" .. STA64 .."/mswu",
	}
	libdirs
    {
     wx1 .. "/lib/" .. STA64 .."",
    }
end	
   dofile "libwx.lua"
end
	buildoptions { "-Wall", "-std=c++11" }
   filter {}