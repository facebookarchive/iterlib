# https://github.com/bro/cmake/blob/master/FindJeMalloc.cmake
# - Try to find google test headers and libraries.
#
# Usage of this module as follows:
#
#     find_package(Gtest)
#
# Variables used by this module, they can change the default behaviour and need
# to be set before calling find_package:
#
#  GTEST_ROOT_DIR Set this variable to the root installation of
#                    gtest if the module has problems finding
#                    the proper installation path.
#
# Variables defined by this module:
#
#  GTEST_FOUND             System has gtest libs/headers
#  GTEST_LIBRARIES         The gtest library/libraries
#  GTEST_INCLUDE_DIR       The location of gtest headers

find_path(GTEST_ROOT_DIR
    NAMES include/gtest/gtest.h
)

find_library(GTEST_LIBRARIES
    NAMES gtest
    HINTS ${GTEST_ROOT_DIR}
)

find_path(GTEST_INCLUDE_DIR
    NAMES gtest/gtest.h
    HINTS ${GTEST_ROOT_DIR}/include
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Gtest DEFAULT_MSG
    GTEST_LIBRARIES
    GTEST_INCLUDE_DIR
)

mark_as_advanced(
    GTEST_ROOT_DIR
    GTEST_LIBRARIES
    GTEST_INCLUDE_DIR
)
