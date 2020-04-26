workspace "sandbox"

-- Include crescent
include ("crescent")

project "sandbox"
	kind		"ConsoleApp"
	language	"C"
	targetdir	"bin"
	objdir		"obj"
	
	files { "src/**.c", "src/**.h" }
	
	-- Link crescent and GLFW
	-- Vulkan is linked by crescent
	links { "crescent", "GLFW" }
	