# NanoPB include file

# Add library includes
include_directories(${CMAKE_CURRENT_LIST_DIR})

# Add project sources
set(LIBNANOPB_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/pb_common.c
    ${CMAKE_CURRENT_LIST_DIR}/pb_encode.c
    ${CMAKE_CURRENT_LIST_DIR}/pb_decode.c
)

# Create library
add_library(nanopb ${LIBNANOPB_SOURCES})

set(OPTIONAL_LIBS nanopb ${OPTIONAL_LIBS})