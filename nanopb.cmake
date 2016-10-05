# NanoPB include file

# Add library includes
include_directories(${CMAKE_CURRENT_LIST_DIR})

# Add project sources
set(NANOPB_SOURCES
    ${CMAKE_CURRENT_LIST_DIR}/pb_common.c
    ${CMAKE_CURRENT_LIST_DIR}/pb_encode.c
    ${CMAKE_CURRENT_LIST_DIR}/pb_decode.c
)

# Register generator for application use
set(NANOPB_GEN ${CMAKE_CURRENT_LIST_DIR}/generator/nanopb_generator.py)
message("nanopb generator: ${NANOPB_GEN}")

# Custom target to initialise nanopb generator
add_custom_target(nanopb_init
    COMMAND make
    COMMENT "Initialising nanopb generator"
    WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR}/generator/proto)

# Create library
add_library(nanopb ${NANOPB_SOURCES})
add_dependencies(nanopb nanopb_init)

set(OPTIONAL_LIBS nanopb ${OPTIONAL_LIBS})
