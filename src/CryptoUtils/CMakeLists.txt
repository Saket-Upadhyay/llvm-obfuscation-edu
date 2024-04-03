add_library(CryptoUtils)
target_sources(CryptoUtils
        PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/CryptoUtils.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/CryptoUtils.h)

target_include_directories(CryptoUtils PRIVATE)
llvm_map_components_to_libnames(llvm_libs Support Core Passes)
target_link_libraries(CryptoUtils PRIVATE ${llvm_libs})
