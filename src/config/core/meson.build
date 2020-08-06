# config build file
#========================================================================


# generate liblucene++.pc
#---------------------------------------------------
core_config = pkg.generate(
    core_lib,
    libraries : [],
    version : meson.project_version(),
    subdirs : ['Lucene++/'],
    filebase : 'lucene++',
    extra_cflags : '',
    description : 'Lucene++ - a C++ search engine, ' +
        'ported from the popular Apache Lucene')


# generate liblucene++-config.cmake
#---------------------------------------------------
cmake.configure_package_config_file(
    name: 'liblucene++',
    input: 'liblucene++-config.cmake.in',
    configuration: config_cmake
)


# generate liblucene++-config-version.cmake
#---------------------------------------------------
cmake.write_basic_package_version_file(
    name: 'liblucene++',
    version: meson.project_version())