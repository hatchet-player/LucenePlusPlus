# core.include build file
#========================================================================

core_inc_dir = meson.current_source_dir()

# src
#========================================================================

# include Config.h
#---------------------------------------------------
configure_file(
    input: config_h,      
    output: 'Config.h',
    copy: true)


# include directories
#========================================================================

core_inc += include_directories('.')
