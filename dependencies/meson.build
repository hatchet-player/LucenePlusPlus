# Hatchet dependencies build file
#========================================================================


# Required dependencies
#---------------------------------------------------
dependencies_dirs = [
    'boost',
    'threads',
    'zlib']

# optional dependencies
#---------------------------------------------------
optional_dirs = []

if (get_option('with_tests'))
    optional_dirs += 'gtest'
endif

if (get_option('with_docs'))
    optional_dirs += [
        'dot',
        'hhc']
endif


# OS Specific Dependencies
#---------------------------------------------------
os_dirs = []


# build Dependencies
#---------------------------------------------------
foreach dir : dependencies_dirs
    subdir(dir)
endforeach

foreach dir : optional_dirs
    subdir(dir)
endforeach

foreach dir : os_dirs
    subdir(dir)
endforeach