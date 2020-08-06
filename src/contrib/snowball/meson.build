# liblucene++-contrib.snowball build file
#========================================================================

contrib_snowball = meson.current_source_dir()

# src
#========================================================================

contrib_src += files(
    join_paths(contrib_snowball, 'SnowballAnalyzer.cpp'),
    join_paths(contrib_snowball, 'SnowballFilter.cpp'))

# include directories
#========================================================================

contrib_inc += include_directories('.')

# add subdirectories
#---------------------------------------------------
contrib_snowball_dirs = [
  'libstemmer_c']


foreach dir : contrib_snowball_dirs
    subdir(dir)
endforeach
