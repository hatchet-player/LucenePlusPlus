# config build file
#========================================================================

config_cmake = configuration_data()
pkg_conf = configuration_data()

config_cmake.set('core_libname', 'lucene++')
config_cmake.set('contrib_libname', 'lucene++-contrib')

config_cmake.set(
    'PACKAGE_CMAKE_INSTALL_INCLUDEDIR',
    join_paths('${PACKAGE_PREFIX_DIR}', get_option('includedir')))
config_cmake.set(
    'PACKAGE_CMAKE_INSTALL_LIBDIR',
    join_paths('${PACKAGE_PREFIX_DIR}', get_option('libdir')))

config_dirs = [
    'core',
    'contrib']


foreach dir : config_dirs
    subdir(dir)
endforeach





