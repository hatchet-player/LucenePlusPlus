# libstemmer_c.include build file
#========================================================================

libstemmer_c_libstememr_dir = meson.current_source_dir()


# src
#========================================================================

if (get_option('use_libstemmer_utf8'))
    contrib_src += files(
        join_paths(libstemmer_c_libstememr_dir, 'libstemmer_utf8.c'))
    contrib_h += files(
        join_paths(libstemmer_c_libstememr_dir, 'modules_utf8.h'))
else
    contrib_src += files(
        join_paths(libstemmer_c_libstememr_dir, 'libstemmer.c'))
    contrib_h += files(
        join_paths(libstemmer_c_libstememr_dir, 'modules_utf8.h'))
endif