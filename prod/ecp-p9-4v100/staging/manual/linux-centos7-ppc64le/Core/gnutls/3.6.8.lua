-- -*- lua -*-
-- Module file created by spack (https://github.com/spack/spack) on 2019-06-03 17:43:47.714716
--
-- gnutls@3.6.8%gcc@6.4.0+guile+zlib arch=linux-centos7-ppc64le/n3zyugk
--

whatis([[Name : gnutls]])
whatis([[Version : 3.6.8]])
whatis([[Short description : GnuTLS is a secure communications library implementing the SSL, TLS and DTLS protocols and technologies around them. It provides a simple C language application programming interface (API) to access the secure communications protocols as well as APIs to parse and write X.509, PKCS #12, OpenPGP and other required structures. It is aimed to be portable and efficient with focus on security and interoperability.]])
whatis([[Configure options : --enable-static --with-included-libtasn1 --with-included-unistring --without-p11-kit --with-zlib --enable-guile --disable-tests --disable-valgrind-tests --disable-full-test-suite]])

help([[GnuTLS is a secure communications library implementing the SSL, TLS and
DTLS protocols and technologies around them. It provides a simple C
language application programming interface (API) to access the secure
communications protocols as well as APIs to parse and write X.509, PKCS
#12, OpenPGP and other required structures. It is aimed to be portable
and efficient with focus on security and interoperability.]])

local version = "3.6.8"
local base = pathJoin("/ecp/sw/opt/manual/ppc64le/gnutls", version)

setenv("NMC_GNUTLS_ROOT", base)

prepend_path("PATH", pathJoin(base, "bin"), ":")
prepend_path("MANPATH", pathJoin(base, "share/man"), ":")
prepend_path("LD_LIBRARY_PATH", pathJoin(base, "lib"), ":")
prepend_path("LIBRARY_PATH", pathJoin(base, "lib"), ":")
prepend_path("CPATH", pathJoin(base, "include"), ":")
prepend_path("PKG_CONFIG_PATH", pathJoin(base, "lib/pkgconfig"), ":")
prepend_path("CMAKE_PREFIX_PATH", base, ":")