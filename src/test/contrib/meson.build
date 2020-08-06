# test.contrib build file
#========================================================================

test_contrib_dir = meson.current_source_dir()

# include directories
#========================================================================


# add subdirectories
#---------------------------------------------------
test_contrib_dirs = [
  'analyzers',
  'highlighter',
  'memory',
  'snowball']

foreach dir : test_contrib_dirs
    subdir(dir)
endforeach
