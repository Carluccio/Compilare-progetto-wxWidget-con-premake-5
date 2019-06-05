filter { "configurations:Release*", "platforms:*" }
	linkoptions { s1 }
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
	filter { "configurations:Debug*", "platforms:*" }
	linkoptions { s1 }
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
	filter { "configurations:*", "platforms:*" }
	links
	{
	"comctl32", "rpcrt4", "shell32", "gdi32", "kernel32", "user32", "comdlg32", "ole32", "oleaut32", "advapi32", "oleacc", "winspool", "winmm", "shlwapi", "uuid", "version", "wsock32", "wininet", "uxtheme"
	}