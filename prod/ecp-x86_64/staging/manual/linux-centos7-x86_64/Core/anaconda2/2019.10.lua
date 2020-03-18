-- -*- lua -*-
--
-- Anaconda2.2019.10 (4.7.12)
-- https://www.anaconda.com
--

whatis([[Name : Anaconda2]])
whatis([[Version : 4.7.12]])
whatis([[Short description : Conda is a tool for managing and deploying applications, environments and packages.]])

local version = "anaconda3-2019.10"
local base = pathJoin("/ecp/sw/opt/manual/x86_64/conda", version)

setenv("ANACONDA_ROOT", base)
setenv("NMC_ANACONDA_ROOT", base)

prepend_path("PATH", pathJoin(base, "bin"), ":")