add_library(StaticFunctionCallAnalysisPass)
target_sources(StaticFunctionCallAnalysisPass
        PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/StaticFunctionCallAnalysisPass.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/StaticFunctionCallAnalysisPass.h)

target_include_directories(StaticFunctionCallAnalysisPass PRIVATE)
llvm_map_components_to_libnames(llvm_libs Support Core Passes)
target_link_libraries(StaticFunctionCallAnalysisPass PRIVATE ${llvm_libs})
