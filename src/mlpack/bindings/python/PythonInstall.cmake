# PythonInstall.cmake
#
# A utility script to install Python bindings and fail fatally if installation
# was not successful.
if (DEFINED ENV{DESTDIR})
  execute_process(COMMAND ${PYTHON_EXECUTABLE}
      "${CMAKE_BINARY_DIR}/src/mlpack/bindings/python/setup.py" install
          --prefix=${CMAKE_INSTALL_PREFIX} --root=$ENV{DESTDIR}
      WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/src/mlpack/bindings/python/"
      RESULT_VARIABLE setup_res)
else ()
  execute_process(COMMAND ${PYTHON_EXECUTABLE}
      "${CMAKE_BINARY_DIR}/src/mlpack/bindings/python/setup.py" install
          --prefix=${CMAKE_INSTALL_PREFIX}
      WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/src/mlpack/bindings/python/"
      RESULT_VARIABLE setup_res)
endif ()

if (NOT ${setup_res} EQUAL "0")
  message(FATAL_ERROR "Error installing Python bindings!")
endif ()
