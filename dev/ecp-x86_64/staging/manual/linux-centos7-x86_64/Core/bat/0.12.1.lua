-- -*- lua -*-
--
-- bat - A cat(1) clone with wings
-- bat supports syntax highlighting for a large number of programming and markup languages
-- https://github.com/sharkdp/bat
--

whatis([[Name : bat]])
whatis([[Version : 0.12.1]])
whatis([[Short description : A cat(1) clone with wings]])

help([[bat supports syntax highlighting for a large number of programming and markup languages.
    Please see the documentation for additonal details: https://github.com/sharkdp/bat]])

local version = "0.12.1"
local base = pathJoin("/ecp/sw/opt/manual/x86_64/bat", version)

setenv("NMC_BAT_ROOT", base)

prepend_path("PATH", pathJoin(base, "bin"), ":")
