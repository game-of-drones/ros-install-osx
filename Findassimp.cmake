###############################################################################
# Find assimp

find_path(
    ASSIMP_INCLUDE_DIRS
    NAMES postprocess.h scene.h version.h config.h cimport.h
    PATHS /usr/local/include/assimp
)

find_library(
    ASSIMP_LIBRARIES
    NAMES assimp
    PATHS /usr/local/lib/
)

if (ASSIMP_INCLUDE_DIRS AND ASSIMP_LIBRARIES)
    SET(ASSIMP_FOUND TRUE)
ENDIF (ASSIMP_INCLUDE_DIRS AND ASSIMP_LIBRARIES)

message("zzzzzzzassimp_LIBRARIES=\n ${ASSIMP_LIBRARIES}")
message("yyyyyyyassimp_INCLUDE_DIRS=\n ${ASSIMP_INCLUDE_DIRS}")

