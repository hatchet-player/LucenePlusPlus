# include.config_h build file
#========================================================================

# generate headers
#========================================================================


# set LPP_SHARED_DLL if compiling shared library
#---------------------------------------------------
if (get_option('default_library') == 'shared')
    config_h.set('LPP_SHARED_DLL', 'define')
endif


# set USE_CYCLIC_CHECK
#---------------------------------------------------
if (sys_name.contains('nt'))
    config_h.set('USE_CYCLIC_CHECK', 'define')
else
    config_h.set('USE_CYCLIC_CHECK', 'undef')
endif

# set USE_BOOST_INTEGER
#---------------------------------------------------
# if (enable_cyclic_check)
#if (sys_name.contains('nt'))
    config_h.set('USE_BOOST_INTEGER', 'define')
#endif


# build config.h
#---------------------------------------------------
config_h = configure_file(
    input : 'Config.h.in',
    output : 'Config.h',
    configuration : config_h)

# install headers
#---------------------------------------------------
install_headers(
    config_h,
    install_dir : join_paths(includedir, 'lucene++'))


# include directories 
#========================================================================

lucene_inc += include_directories('.')
