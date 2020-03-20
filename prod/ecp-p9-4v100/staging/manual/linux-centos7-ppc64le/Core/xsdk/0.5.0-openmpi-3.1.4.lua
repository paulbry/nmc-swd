-- -*- lua -*-
--
-- Load all required modules including xSDK
-- https://xsdk.info/
--

whatis([[Name : 0.5.0-openmpi-3.1.4]])
whatis([[Version : 0.5.0]])
whatis([[Short description : Load GCC@8.3.0 and OpenMPI@3.1.4 and modules paths required to access xSDK version 0.5.0 realted libraries]])


if not isloaded("gcc/8.3.0") then
    load("gcc/8.3.0")
end

if not isloaded("openmpi/3.1.4") then
    load("openmpi/3.1.4")
end

prepend_path("MODULEPATH", "/ecp/sw/ecp-p9-4v100/modulefiles/v2/sdk/linux-centos7-ppc64le/gcc/8.3.0")
prepend_path("MODULEPATH", "/ecp/sw/ecp-p9-4v100/modulefiles/v2/sdk/linux-centos7-ppc64le/openmpi/3.1.4-2vpoje3/gcc/8.3.0")
