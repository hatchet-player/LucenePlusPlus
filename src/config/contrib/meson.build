# config build file
#========================================================================


# generate liblucene++-contrib.pc
#---------------------------------------------------
contrib_config = pkg.generate(
    contrib_lib,
    libraries : [contrib_lib],
    version : meson.project_version(),
    subdirs : ['Lucene++/'],
    filebase : 'lucene++-contrib',
    extra_cflags : '-std=c++17',
    description : 'Lucene++ - a C++ search engine, ' +
        'ported from the popular Apache Lucene')


# generate liblucene++-contrib-config.cmake
#---------------------------------------------------
cmake.configure_package_config_file(
    name: 'liblucene++-contrib',
    input: 'liblucene++-contrib-config.cmake.in',
    configuration: config_cmake
)


# generate 
# liblucene++-contrib-config-version.cmake
#---------------------------------------------------
cmake.write_basic_package_version_file(
    name: 'liblucene++-contrib',
    version: meson.project_version())