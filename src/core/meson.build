# core build file
#========================================================================

core_dir = meson.current_source_dir()
core_inc = lucene_inc

# dependencies
#========================================================================

core_dep_list = [
    boost_dep,
    threads_dep,
    zlib_dep]


# src
#========================================================================

core_src = files()

core_h = files()


# include directories
#========================================================================

# include current dir
#---------------------------------------------------
core_inc += include_directories('.')


# add subdirectories
#---------------------------------------------------
core_dirs = [
  'analysis',
  'document',
  'include',
  'index',
  'msvc',
  'queryparser',
  'search',
  'store',
  'util']

foreach dir : core_dirs
    subdir(dir)
endforeach


# build
#========================================================================

# set build args
#---------------------------------------------------
core_link_args = []

core_cxx_args = [
    '-DLPP_BUILDING_LIB']




# build library
#---------------------------------------------------
core_lib = library(
    'lucene++',
    sources : [
        core_src],
    install : true,
    install_mode : 'rwxr-xr-x',
    install_dir : libdir,
    include_directories : [
        core_inc,
        lucene_inc],
    cpp_args : core_cxx_args,
    link_args : core_link_args,
    dependencies : core_dep_list,
    gnu_symbol_visibility: 'hidden')


# install headers
#---------------------------------------------------
install_headers(
    core_h,
    install_dir : join_paths(includedir, 'lucene++'))


# declare dependency
#---------------------------------------------------
core_dep = declare_dependency(
    link_with : core_lib,
    include_directories : [
        core_inc])
