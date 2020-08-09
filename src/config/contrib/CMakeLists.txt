#################################
# install config files
#################################
configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/liblucene++-contrib.pc.cmake"
  "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-contrib.pc" @ONLY)

configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/liblucene++-contrib-config.cmake.in"
  "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-contrib-config.cmake" @ONLY)

install(
  FILES
  "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-contrib.pc"
  DESTINATION "${LIB_DESTINATION}/pkgconfig")

  install(
    FILES
    "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-contrib-conifg.cmake"
    DESTINATION "${CMAKE_INSTALL_LIBDIR}")
  