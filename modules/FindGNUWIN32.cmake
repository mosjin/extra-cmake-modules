if (WIN32)

INCLUDE(MacroGetenvWinPath)

MACRO_GETENV_WIN_PATH(_progFiles PROGRAMFILES)

FIND_FILE(GNUWIN32_DIR GNUWIN32
   ${_progFiles}
   "C:/"
)

if(GNUWIN32_DIRECTORY)
   set(GNUWIN32_INCLUDE_DIR ${GNUWIN32_DIR}/include)
   set(GNUWIN32_LIBRARY_DIR ${GNUWIN32_DIR}/lib)
   set(GNUWIN32_BINARY_DIR  ${GNUWIN32_DIR}/bin)
   set(GNUWIN32_FOUND TRUE)
else(GNUWIN32_DIRECTORY)
   set(GNUWIN32_FOUND)
endif(GNUWIN32_DIRECTORY)

if(GNUWIN32_FOUND)
  if(not GNUWIN32_FIND_QUIETLY)
    message(STATUS "Found GNUWIN32: ${GNUWIN32_DIR}")
  endif(not GNUWIN32_FIND_QUIETLY)
else(GNUWIN32_FOUND)
  if(GNUWIN32_FIND_REQUIRED)
    message(SEND_ERROR "Could not find GNUWIN32")
  endif(GNUWIN32_FIND_REQUIRED)
endif(GNUWIN32_FOUND)

endif (WIN32)

