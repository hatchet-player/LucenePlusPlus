# test build file
#========================================================================

test_dir = meson.current_source_dir()
test_inc = []

# dependancies
#========================================================================

test_dep_list = [
    boost_dep,
    threads_dep,
    zlib_dep,
    gtest_dep,

    core_dep,
    contrib_dep]


# src
#========================================================================


test_src = files()

test_h = files()


# include directories
#========================================================================

# include current dir
#---------------------------------------------------
test_inc += include_directories('.')


# add subdirectories
#---------------------------------------------------
test_dirs = [
  'analysis',
  'contrib',
  'document',
  'include',
  'index',
  'main',
  'msvc',
  'queryparser',
  'search',
  'store',
  'testfiles',
  'util'
  ]

foreach dir : test_dirs
    subdir(dir)
endforeach


# build
#========================================================================


# set build args
#---------------------------------------------------
test_link_args = []

test_cxx_args = [
    '-DLPP_EXPOSE_INTERNAL']




# build executable
#---------------------------------------------------
test_bin = executable(
    'lucene++-tester',
    sources : [
        test_src],
    install : false,
    include_directories : [
        test_inc],
    cpp_args : test_cxx_args,
    link_args : test_link_args,
    dependencies : test_dep_list,
    gnu_symbol_visibility: 'hidden')
