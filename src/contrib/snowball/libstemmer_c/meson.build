# libstemmer_c build file
#========================================================================

libstemmer_dir = meson.current_source_dir()


# include directories
#========================================================================
contrib_inc += include_directories('.')

src_dirs = [
    'include',
    'libstemmer',
    'runtime',
    'src_c']


foreach dir : src_dirs
    subdir(dir)
endforeach

