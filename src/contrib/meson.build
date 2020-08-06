# liblucene++-contrib build file
#========================================================================

contrib_dir = meson.current_source_dir()
contrib_inc = lucene_inc


# dependancies
#========================================================================

contrib_dep_list = [
    boost_dep,
    threads_dep,
    zlib_dep,

    core_dep]


# src
#========================================================================

contrib_src = files()

contrib_h = files()


# include directories
#========================================================================

contrib_inc += include_directories('.')


# add subdirectories
#---------------------------------------------------
contrib_dirs = [
  'analyzers',
  'highlighter',
  'include',
  'memory',
  'msvc',
  'snowball']

foreach dir : contrib_dirs
    subdir(dir)
endforeach


# Build args
#========================================================================


# set build args
#---------------------------------------------------
contrib_link_args = []

contrib_cxx_args = [
    '-DLPP_BUILDING_LIB' ]


# build library
#---------------------------------------------------
contrib_lib = library(
    'lucene++-contrib',
    sources : [
        contrib_src],
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : libdir,
    include_directories : [
        contrib_inc],
    cpp_args : contrib_cxx_args,
    link_args : contrib_link_args,
    dependencies : contrib_dep_list,
    gnu_symbol_visibility: 'hidden')


# install headers
#---------------------------------------------------
install_headers(
    contrib_h,
    install_dir : join_paths(includedir, 'lucene++'))


# declare dependency
#---------------------------------------------------
contrib_dep = declare_dependency(
    link_with : contrib_lib,
    include_directories : [
        contrib_inc])
