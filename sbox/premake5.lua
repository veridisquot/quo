-- TO COMPILE ON WINDOWS, REMOVE THE `links` ATTRIBUTE

workspace "sbox"
	configurations { "debug", "release" }

project "sbox"
	kind "ConsoleApp"
	language "C"

	targetdir "bin"

	includedirs {
		"../quo/"
	}

	files {
		"src/sbox.c"
	}

	links {
 		"GL",
 		"X11",
 		"m",
 		"asound"
	}

	filter "configurations:debug"
		symbols "on"

	filter "configurations:release"
		optimize "on"
