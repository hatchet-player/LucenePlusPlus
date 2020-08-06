# indexfiles build file
#========================================================================

indexfiles_dir = meson.current_source_dir()


# dependancies
#========================================================================

indexfiles_dep_list = [
    boost_dep,
    threads_dep,
    zlib_dep,

    core_dep,
    contrib_dep]


# src
#========================================================================

indexfiles_src = files(
    join_paths(indexfiles_dir, 'main.cpp'))



# include directories
#========================================================================

# include current dir
#---------------------------------------------------
indexfiles_inc = [include_directories('.')]


# build
#========================================================================


# set build args
#---------------------------------------------------
indexfiles_link_args = []

indexfiles_cxx_args = []




# build executable
#---------------------------------------------------
indexfiles_bin = executable(
    'lucene++-indexfiles',
    sources : [
        indexfiles_src],
    install : false,
    include_directories : indexfiles_inc,
    cpp_args : indexfiles_cxx_args,
    link_args : indexfiles_link_args,
    dependencies : indexfiles_dep_list,
    gnu_symbol_visibility: 'hidden')

