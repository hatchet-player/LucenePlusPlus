# test.analysis build file
#========================================================================

test_analysis_dir = meson.current_source_dir()

# src
#========================================================================


test_src += files(
    join_paths(test_analysis_dir, 'AnalyzersTest.cpp'),
    join_paths(test_analysis_dir, 'BaseTokenStreamFixture.cpp'),
    join_paths(test_analysis_dir, 'CachingTokenFilterTest.cpp'),
    join_paths(test_analysis_dir, 'CharFilterTest.cpp'),
    join_paths(test_analysis_dir, 'KeywordAnalyzerTest.cpp'),
    join_paths(test_analysis_dir, 'LengthFilterTest.cpp'),
    join_paths(test_analysis_dir, 'MappingCharFilterTest.cpp'),
    join_paths(test_analysis_dir, 'NumericTokenStreamTest.cpp'),
    join_paths(test_analysis_dir, 'PerFieldAnalzyerWrapperTest.cpp'),
    join_paths(test_analysis_dir, 'StopAnalyzerTest.cpp'),
    join_paths(test_analysis_dir, 'StopFilterTest.cpp'),
    join_paths(test_analysis_dir, 'TeeSinkTokenFilterTest.cpp'),
    join_paths(test_analysis_dir, 'TokenTest.cpp'))


# include directories
#========================================================================


# add subdirectories
#---------------------------------------------------
test_analysis_dirs = [
  'standard',
  'tokenattributes']

foreach dir : test_analysis_dirs
    subdir(dir)
endforeach
