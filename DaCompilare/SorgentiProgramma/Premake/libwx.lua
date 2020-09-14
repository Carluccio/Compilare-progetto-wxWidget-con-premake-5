if (sq1 ~= "n") then
filter { "configurations:Release*", "platforms:*" }
	links
	{
	--"sqlite3u",
	"wxsqlite3_msw" ..VER .. "u",
	"wxbase" .. VER .. "u",
	"wxbase" .. VER .. "u_net",
	"wxbase" .. VER .. "u_xml",
	"wxexpat",
	"wxjpeg",
	"wxmsw" .. VER .. "u_adv",
	"wxmsw" .. VER .. "u_core",
	"wxmsw" .. VER .. "u_aui",
	"wxmsw" .. VER .. "u_gl",
	"wxmsw" .. VER .. "u_html",
	"wxmsw" .. VER .. "u_media",
	"wxmsw" .. VER .. "u_propgrid",
	"wxmsw" .. VER .. "u_ribbon",
	"wxmsw" .. VER .. "u_richtext",
	"wxmsw" .. VER .. "u_stc",
	"wxmsw" .. VER .. "u_webview",
	"wxmsw" .. VER .. "u_xrc",
	"wxpng",
	"wxregexu",
	"wxscintilla",
	"wxtiff",
	"wxzlib"
	}
else
filter { "configurations:Release*", "platforms:*" }
	links
	{
	"wxbase" .. VER .. "u",
	"wxbase" .. VER .. "u_net",
	"wxbase" .. VER .. "u_xml",
	"wxexpat",
	"wxjpeg",
	"wxmsw" .. VER .. "u_adv",
	"wxmsw" .. VER .. "u_core",
	"wxmsw" .. VER .. "u_aui",
	"wxmsw" .. VER .. "u_gl",
	"wxmsw" .. VER .. "u_html",
	"wxmsw" .. VER .. "u_media",
	"wxmsw" .. VER .. "u_propgrid",
	"wxmsw" .. VER .. "u_ribbon",
	"wxmsw" .. VER .. "u_richtext",
	"wxmsw" .. VER .. "u_stc",
	"wxmsw" .. VER .. "u_webview",
	"wxmsw" .. VER .. "u_xrc",
	"wxpng",
	"wxregexu",
	"wxscintilla",
	"wxtiff",
	"wxzlib"
	}
	end
if (sq1 ~= "n") then
filter { "configurations:Debug*", "platforms:*" }
	links
	{
	--"sqlite3ud",
	"wxsqlite3_msw" ..VER .. "ud",
	"wxmsw" .. VER .. "ud_core",
	"wxbase" .. VER .. "ud",
	"wxbase" .. VER .. "ud_net",
	"wxbase" .. VER .. "ud_xml",
	"wxexpatd",
	"wxjpegd",
	"wxmsw" .. VER .. "ud_adv",
	"wxmsw" .. VER .. "ud_aui",
	"wxmsw" .. VER .. "ud_gl",
	"wxmsw" .. VER .. "ud_html",
	"wxmsw" .. VER .. "ud_media",
	"wxmsw" .. VER .. "ud_propgrid",
	"wxmsw" .. VER .. "ud_ribbon",
	"wxmsw" .. VER .. "ud_richtext",
	"wxmsw" .. VER .. "ud_stc",
	"wxmsw" .. VER .. "ud_webview",
	"wxmsw" .. VER .. "ud_xrc",
	"wxpngd",
	"wxregexud",
	"wxscintillad",
	"wxtiffd",
	"wxzlibd"
	}
else
filter { "configurations:Debug*", "platforms:*" }
	links
	{
	"wxmsw" .. VER .. "ud_core",
	"wxbase" .. VER .. "ud",
	"wxbase" .. VER .. "ud_net",
	"wxbase" .. VER .. "ud_xml",
	"wxexpatd",
	"wxjpegd",
	"wxmsw" .. VER .. "ud_adv",
	"wxmsw" .. VER .. "ud_aui",
	"wxmsw" .. VER .. "ud_gl",
	"wxmsw" .. VER .. "ud_html",
	"wxmsw" .. VER .. "ud_media",
	"wxmsw" .. VER .. "ud_propgrid",
	"wxmsw" .. VER .. "ud_ribbon",
	"wxmsw" .. VER .. "ud_richtext",
	"wxmsw" .. VER .. "ud_stc",
	"wxmsw" .. VER .. "ud_webview",
	"wxmsw" .. VER .. "ud_xrc",
	"wxpngd",
	"wxregexud",
	"wxscintillad",
	"wxtiffd",
	"wxzlibd"
	}
end	
filter { "configurations:*", "platforms:*" }
	links
	{
	"kernel32", "user32", "gdi32", "comdlg32", "winspool", "winmm", "shell32", "shlwapi", "comctl32", "ole32", 
	"oleaut32", "uuid", "rpcrt4", "advapi32", "version", "wsock32", "wininet", "oleacc", "uxtheme"
	}
linkgroups 'On'