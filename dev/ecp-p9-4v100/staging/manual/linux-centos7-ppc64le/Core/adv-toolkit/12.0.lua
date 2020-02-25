-- -*- lua -*-
--
-- at - Advance Toolchain for Linux on Power build system
-- https://github.com/advancetoolchain/advance-toolchain
--

whatis([[Name : IBM Advanced Toolchain]])
whatis([[Version : 0.12.0]])
whatis([[Short description : Advance Toolchain for Linux on Power build system.]])

help([[The IBM Advance Toolchain for Linux on Power is a set of open source compilers, runtime libraries, and dev tools.
    Please see the documentation for additonal details: https://developer.ibm.com/linuxonpower/advance-toolchain/]])

local version = "0.12.0"
local base = pathJoin("/ecp/sw/opt/manual/ppc64le/at", version)

setenv("NMC_AT_ROOT", base)
setenv("CC", pathJoin(base, "bin/gcc"))
setenv("CXX", pathJoin(base, "bin/g++"))
setenv("FC", pathJoin(base, "bin/gfortran"))
setenv("F77", pathJoin(base, "bin/gfortran"))
setenv("F90", pathJoin(base, "bin/gfortran"))

prepend_path("PATH", pathJoin(base, "bin"), ":")
prepend_path("MANPATH",  pathJoin(base, "share/man"), ":")
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"), ":")
prepend_path("LIBRARY_PATH", pathJoin(base, "lib"), ":")
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64"), ":")
prepend_path("LIBRARY_PATH", pathJoin(base, "lib64"), ":")
prepend_path("CPATH", pathJoin(base, "include"), ":")
prepend_path("CMAKE_PREFIX_PATH", base, ":")
