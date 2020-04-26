workspace "sandbox"
	configurations "x64"

-- Includes crescent from source
include ("crescent")



project "sandbox"
	kind		"ConsoleApp"
	language	"C"
	targetdir	"bin"
	objdir		"obj"
	
	-- Add C and H files
	files { "src/**.c", "src/**.h" }
	-- Add shaders to compilation
	files { "assets/shaders/**.vert", "assets/shaders/**.frag" }	

	-- Link crescent and GLFW
	-- Vulkan is linked by crescent
	links { "crescent", "GLFW" }