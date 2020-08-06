# extra.doxygen build file
#========================================================================


# configure doxygen
#========================================================================

doxygen_conf = configuration_data()

# set LPP_VERSION
#---------------------------------------------------
doxygen_conf.set('LPP_VERSION', meson.project_version())


# set doc generations
#---------------------------------------------------
doxygen_conf.set('DOCS_HTML', get_option('docs_gen_html'))
doxygen_conf.set('DOCS_LATEX', get_option('docs_gen_latex'))
doxygen_conf.set('DOCS_MAN', get_option('docs_gen_man'))
doxygen_conf.set('DOCS_RTF', get_option('docs_gen_rtf'))
doxygen_conf.set('DOCS_XML', get_option('docs_gen_xml'))


# set directory paths
#---------------------------------------------------
doxygen_conf.set('SRC_DIR', src_dir)
doxygen_conf.set('INCLUDE_DIR', include_dir)
doxygen_conf.set('PROJECT_DIR', project_dir)
doxygen_conf.set('TAGFILE_DIR', '')
doxygen_conf.set('DOC_DIR', doc_build_dir)
doxygen_conf.set('DOXYGEN_SRC_DIR', doc_src_dir)
doxygen_conf.set('DOXYGEN_BUILD_DIR', doc_build_dir)


# set dot paths
#---------------------------------------------------
if (dot_bin.found())
    doxygen_conf.set('HAVE_DOT', 'YES')
    doxygen_conf.set_quoted('DOT_PATH', dot_bin.path())
else
    doxygen_conf.set('HAVE_DOT', 'NO')
    doxygen_conf.set('DOT_PATH', '')
endif


# set hhc vars
#---------------------------------------------------
if (hhc_bin.found())
    doxygen_conf.set('DOCS_HTML_HELP', get_option('docs_gen_html_help'))
    doxygen_conf.set_quoted('HHC_PATH', dot_bin.path())
else
    doxygen_conf.set('DOCS_HTML_HELP', 'NO')
    doxygen_conf.set('HHC_PATH', '')
endif


# generate doxygen
#========================================================================

# build doxygen.css
#---------------------------------------------------
doxyfile_css = configure_file(
    input : 'doxygen.css.in',
    output : 'doxygen.css',
    configuration : doxygen_conf)


# build helpheader.htm
#---------------------------------------------------
helpheader_htm = configure_file(
    input : 'helpheader.htm.in',
    output : 'helpheader.htm',
    configuration : doxygen_conf)


# build helpfooter.htm
#---------------------------------------------------
helpfooter_htm = configure_file(
    input : 'helpfooter.htm.in',
    output : 'helpfooter.htm',
    configuration : doxygen_conf)


# build Doxyfile
#---------------------------------------------------
helpheader_htm = configure_file(
    input : 'Doxyfile.in',
    output : 'Doxyfile',
    configuration : doxygen_conf)


