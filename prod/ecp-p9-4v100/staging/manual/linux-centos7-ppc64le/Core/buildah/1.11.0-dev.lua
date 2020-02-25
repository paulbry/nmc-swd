-- -*- lua -*-
--
-- buildah
-- A tool that facilitates building OCI images 
-- https://github.com/containers/buildah
--

whatis([[Name : buildah]])
whatis([[Version : 1.11.0-dev]])
whatis([[Short description : umoci modifies Open Container images]])

help([[Buildah - a tool that facilitates building Open Container Initiative (OCI) container images: https://github.com/containers/buildah]])

local version = "1.11.0-dev"
local base = pathJoin("/ecp/sw/opt/manual/ppc64le/buildah", version)

setenv("NMC_BUILDAH_ROOT", base)

prepend_path("PATH", pathJoin(base, "bin"), ":")
