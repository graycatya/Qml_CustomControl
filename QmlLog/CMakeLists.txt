cmake_minimum_required(VERSION 3.10)

project(QmlLog)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set (LIB_CATLOG_INCLUDE ${PROJECT_SOURCE_DIR}/Log)
set(LIB_CATLOG_DIR ${PROJECT_SOURCE_DIR}/Log/lib)

add_definitions(-std=c++11)

include_directories("${PROJECT_SOURCE_DIR}/QmlCatLog")
add_subdirectory(${PROJECT_SOURCE_DIR}/QmlCatLog QmlCatLog.out)
set (EXTRA_LIBS2 ${EXTRA_LIBS2} QmlCatLog)

include_directories(${LIB_CATLOG_INCLUDE})

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

aux_source_directory(. DIR_LIB_SRCS)

qt5_add_resources(QRC_FILES  "qml.qrc")

add_executable(${PROJECT_NAME} ${DIR_LIB_SRCS} ${QRC_FILES})
target_compile_definitions(${PROJECT_NAME} PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(${PROJECT_NAME} PRIVATE ${EXTRA_LIBS2})
target_link_libraries(${PROJECT_NAME} PRIVATE Qt5::Core Qt5::Quick)

