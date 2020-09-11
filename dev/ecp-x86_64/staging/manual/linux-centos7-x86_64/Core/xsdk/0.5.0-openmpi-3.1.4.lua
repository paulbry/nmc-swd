-- -*- lua -*-
--
-- Load all required modules including xSDK
-- https://xsdk.info/
--

whatis([[Name : xsdk]])
whatis([[Version : 0.5.0-openmpi-3.1.4]])
whatis([[Short description : Load GCC@8.3.0 and OpenMPI@3.1.4 and modules paths required to access xSDK version 0.5.0 realted libraries]])


if not isloaded("gcc/8.3.0") then
    load("gcc/8.3.0")
end

if not isloaded("openmpi/3.1.4") then
    load("openmpi/3.1.4")
end

prepend_path("MODULEPATH", "/ecp/sw/ecp-x86_64/modulefiles/v2/sdk/linux-centos7-x86_64/gcc/8.3.0")
prepend_path("MODULEPATH", "/ecp/sw/ecp-x86_64/modulefiles/v2/sdk/linux-centos7-x86_64/openmpi/3.1.4-i4ynhtc/gcc/8.3.0")
