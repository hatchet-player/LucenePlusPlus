# doc build file
#========================================================================


doc_src_dir = meson.current_source_dir()
doc_build_dir = meson.current_build_dir()

# include directories
#========================================================================


lucene_inc += include_directories('.')


extra_dirs = [
    'doxygen']


foreach dir : extra_dirs
    subdir(dir)
endforeach
