# src build file
#========================================================================

src_dir = meson.current_source_dir()


# include directories
#========================================================================

lucene_inc += include_directories('.')

src_dirs = [
    'core',
    'contrib',
    'config']

if (get_option('with_demo'))
    src_dirs += 'demo'
endif


if (get_option('with_tests'))
    src_dirs += 'test'
endif


foreach dir : src_dirs
    subdir(dir)
endforeach




