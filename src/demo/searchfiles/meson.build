# searchfiles build file
#========================================================================

searchfiles_dir = meson.current_source_dir()


# dependancies
#========================================================================

searchfiles_dep_list = [
    boost_dep,
    threads_dep,
    zlib_dep,

    core_dep,
    contrib_dep]


# src
#========================================================================

searchfiles_src = files(
    join_paths(searchfiles_dir, 'main.cpp'))



# include directories
#========================================================================

# include current dir
#---------------------------------------------------
searchfiles_inc = [include_directories('.')]


# build
#========================================================================


# set build args
#---------------------------------------------------
searchfiles_link_args = []

searchfiles_cxx_args = []




# build library
#---------------------------------------------------
searchfiles_lib = executable(
    'lucene++-searchfiles',
    sources : [
        searchfiles_src],
    install : false,
    include_directories : searchfiles_inc,
    cpp_args : searchfiles_cxx_args,
    link_args : searchfiles_link_args,
    dependencies : searchfiles_dep_list,
    gnu_symbol_visibility: 'hidden')

