-- -*- lua -*-
--
-- Load required modules and set appropraite MODULEPATHS
-- https://github.com/E4S-Project/e4s-stacks/blob/master/e4s/spack.yaml
--

whatis([[Name : e4s]])
whatis([[Version : 1.0.0-mpich-3.2.1]])
whatis([[Short description : Load GCC@7.3.0 and MPICH@3.2.1 and modules paths required to access E4S version 1.0.0 realted libraries]])


if not isloaded("gcc/7.3.0") then
    load("gcc/7.3.0")
end

prepend_path("MODULEPATH", "/ecp/sw/dev/ecp-x86_64/modulefiles/e4s/linux-centos7-x86_64/gcc/7.3.0")

if not isloaded("mpich/3.2.1") then
    load("mpich/3.2.1 ")
end
