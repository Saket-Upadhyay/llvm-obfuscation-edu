add_executable(llvmobfuscator)
target_sources(llvmobfuscator PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/LLVMObfuscation.cpp ${CMAKE_CURRENT_SOURCE_DIR}/LLVMObfuscation.h)

add_subdirectory(OpSubstitutionPass)
add_subdirectory(CryptoUtils)
add_subdirectory(StaticFunctionCallAnalysisPass)


target_link_libraries(llvmobfuscator
        PRIVATE OperatorSubstitution
        PRIVATE CryptoUtils
        PRIVATE StaticFunctionCallAnalysisPass
        ${llvm_libs})

target_include_directories(llvmobfuscator
        PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/OpSubstitutionPass
        PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/CryptoUtils
        PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/StaticFunctionCallAnalysisPass
        )