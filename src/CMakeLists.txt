

set(SOURCE_FILES main.cpp)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})
target_link_libraries(${PROJECT_NAME} PRIVATE fmt::fmt spdlog::spdlog nlohmann_json::nlohmann_json)
