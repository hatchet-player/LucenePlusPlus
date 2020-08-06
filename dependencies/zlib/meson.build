# ZLib Dependency File
#========================================================================


# Look for zlib, a required dependency.
#----------------------------------------------------
zlib_dep = dependency('zlib')


# Set HAVE_ZLIB in // config.h
#---------------------------------------------------  
config_h.set(
    'HAVE_ZLIB',
    zlib_dep.found(),
    description : 'Define if the Zlib library is available.')
