#################################
# install pkg-config file
#################################
if(NOT WIN32)
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/liblucene++.pc.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/liblucene++.pc" @ONLY)
  configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/liblucene++-contrib.pc.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-contrib.pc" @ONLY)
  install(
    FILES
    "${CMAKE_CURRENT_BINARY_DIR}/liblucene++.pc"
    "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-contrib.pc"
    DESTINATION "${LIB_DESTINATION}/pkgconfig")
endif()