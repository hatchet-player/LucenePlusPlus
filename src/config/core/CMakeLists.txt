#################################
# install config files
#################################
configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/liblucene++.pc.cmake"
  "${CMAKE_CURRENT_BINARY_DIR}/liblucene++.pc" @ONLY)

configure_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/liblucene++-config.cmake.in"
  "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-config.cmake" @ONLY)

install(
  FILES
  "${CMAKE_CURRENT_BINARY_DIR}/liblucene++.pc"
  DESTINATION "${LIB_DESTINATION}/pkgconfig")

  install(
    FILES
    "${CMAKE_CURRENT_BINARY_DIR}/liblucene++-conifg.cmake"
    DESTINATION "${CMAKE_INSTALL_LIBDIR}")
  