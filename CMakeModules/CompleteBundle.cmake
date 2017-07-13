if(APPLE)
  set(SCRIPT CompleteBundleOSX)
elseif(WIN32)
  set(SCRIPT CompleteBundleWin)
endif(APPLE)

option(CODE_SIGN "code sign the app" OFF)
if(CODE_SIGN)
  set(DO_SIGN 1)
else(CODE_SIGN)
  set(DO_SIGN 0)
endif(CODE_SIGN)

if(ENABLE_ANGLE_DEP)
  set(DO_ENABLE_ANGLE_DEP 1)
else()
  set(DO_ENABLE_ANGLE_DEP 0)
endif()

if(SCRIPT)
  configure_file(${CMAKE_SOURCE_DIR}/CMakeModules/${SCRIPT}.cmake.in ${SCRIPT}.cmake @ONLY)
  install(SCRIPT ${CMAKE_CURRENT_BINARY_DIR}/${SCRIPT}.cmake)
endif(SCRIPT)
