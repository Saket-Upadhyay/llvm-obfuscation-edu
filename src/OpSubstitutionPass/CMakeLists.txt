add_library(OperatorSubstitution)
target_sources(OperatorSubstitution
        PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/OperatorSubstitution.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/OperatorSubstitution.h)

target_include_directories(OperatorSubstitution PRIVATE CryptoUtils)
llvm_map_components_to_libnames(llvm_libs Support Core Passes)
target_link_libraries(OperatorSubstitution PRIVATE ${llvm_libs} CryptoUtils)
