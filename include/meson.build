# include build file
#========================================================================

include_dir = meson.current_source_dir()

# include directories
#========================================================================


lucene_inc += include_directories('.')


include_dirs = [
    'config_h',
    'lucene++']


foreach dir : include_dirs
    subdir(dir)
endforeach