# deletefiles build file
#========================================================================

deletefiles_dir = meson.current_source_dir()


# dependancies
#========================================================================

deletefiles_dep_list = [
    boost_dep,
    threads_dep,
    zlib_dep,

    core_dep,
    contrib_dep]


# src
#========================================================================

deletefiles_src = files(
    join_paths(deletefiles_dir, 'main.cpp'))



# include directories
#========================================================================

# include current dir
#---------------------------------------------------
deletefiles_inc = [include_directories('.')]


# build
#========================================================================


# set build args
#---------------------------------------------------
deletefiles_link_args = []

deletefiles_cxx_args = []




# build executable
#---------------------------------------------------
deletefiles_bin = executable(
    'lucene++-deletefiles',
    sources : [
        deletefiles_src],
    install : false,
    include_directories : deletefiles_inc,
    cpp_args : deletefiles_cxx_args,
    link_args : deletefiles_link_args,
    dependencies : deletefiles_dep_list,
    gnu_symbol_visibility: 'hidden')

