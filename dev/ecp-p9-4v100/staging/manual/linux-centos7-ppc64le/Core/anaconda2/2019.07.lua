-- -*- lua -*-
--
-- Anaconda2.2019.07 (4.7.10)
-- https://www.anaconda.com
--

whatis([[Name : Anaconda2]])
whatis([[Version : 4.7.10]])
whatis([[Short description : Conda is a tool for managing and deploying applications, environments and packages.]])

local version = "anaconda2-2019.07"
local base = pathJoin("/ecp/sw/opt/manual/ppc64le/conda", version)

setenv("ANACONDA_ROOT", base)
setenv("NMC_ANACONDA_ROOT", base)

prepend_path("PATH", pathJoin(base, "bin"), ":")