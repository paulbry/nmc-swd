-- -*- lua -*-
--
-- go
-- https://golang.org/
--

whatis([[Name : go]])
whatis([[Version : 1.13.5]])
whatis([[Short description : The golang compiler and build environment]])

help([[The golang compiler and build environment]])

if not isloaded("git/2.21.0") then
    load("git/2.21.0")
end

prepend_path("PATH", "/ecp/sw/opt/manual/ppc64le/go/1.13.5/bin", ":")
prepend_path("LD_LIBRARY_PATH", "/ecp/sw/opt/manual/ppc64le/go/1.13.5/lib", ":")
prepend_path("LIBRARY_PATH", "/ecp/sw/opt/manual/ppc64le/go/1.13.5/lib", ":")
prepend_path("CMAKE_PREFIX_PATH", "/ecp/sw/opt/manual/ppc64le/go/1.13.5/", ":")
setenv("NMC_GO_ROOT", "/ecp/sw/opt/manual/ppc64le/go/1.13.5")