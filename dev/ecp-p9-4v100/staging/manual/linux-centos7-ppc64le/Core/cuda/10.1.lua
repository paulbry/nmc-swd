-- -*- lua -*-
-- Copyright (c) 2010, NVIDIA CORPORATION.  All rights reserved.
--
-- NVIDIA CORPORATION and its licensors retain all intellectual property
-- and proprietary rights in and to this software, related documentation
-- and any modifications thereto.  Any use, reproduction, disclosure or
-- distribution of this software and related documentation without an express
-- license agreement from NVIDIA CORPORATION is strictly prohibited.
--

whatis([[Name : cuda]])
whatis([[Version : 10.1]])
whatis([[Short description : This module file defines the system paths and environment variables for CUDA-$version.]])
whatis([[Configure options : ???]])

help([[CUDA is a parallel computing platform and application programming interface 
model created by Nvidia. It allows software developers and software engineers 
to use a CUDA-enabled graphics processing unit for general purpose processing 
— an approach termed GPGPU]])

local version = "10.1"
local base = "/usr/local/cuda-10.1"

setenv("CUDAPATH", base)
setenv("CUDA_DIR", base)
setenv("CUDA_HOME", base)
setenv("CUDA_INCLUDE", pathJoin(base, "include"))
setenv("NMC_CUDA_ROOT", base)

prepend_path("PATH", pathJoin(base, "bin"), ":")
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib64"), ":")
prepend_path("MANPATH", pathJoin(base, "share/man"), ":")
prepend_path("CPATH", pathJoin(base, "include"), ":")
