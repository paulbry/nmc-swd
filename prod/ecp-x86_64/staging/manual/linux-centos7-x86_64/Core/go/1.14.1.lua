-- -*- lua -*-
--
-- go
-- https://golang.org/
--

whatis([[Name : go]])
whatis([[Version : 1.14.1]])
whatis([[Short description : The golang compiler and build environment]])

help([[The golang compiler and build environment]])

local version = "1.14.1"
local base = pathJoin("/ecp/sw/opt/manual/x86_64/go/1.14.1/", version)

setenv("NMC_GO_ROOT", base)

prepend_path("PATH", pathJoin(base, "bin"), ":")
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"), ":")
prepend_path("LIBRARY_PATH", pathJoin(base, "lib"), ":")
prepend_path("CMAKE_PREFIX_PATH", base, ":")
