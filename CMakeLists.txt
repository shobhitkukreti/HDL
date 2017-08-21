# Specify the minimum version for CMake

cmake_minimum_required(VERSION 2.8)
# Project's name

project(DashBoard)
# Set the output folder where your program will be created

set(OpenCV_PATH "/usr/local/Cellar/opencv3/3.2.0")

set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/build)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})

set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(OpenCV_DIR "${OpenCV_PATH}/share/OpenCV")

include_directories(${OpenCV_PATH}/include)
find_package(OpenCV REQUIRED COMPONENTS core imgproc highgui)

#set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} /usr/local/Cellar/opencv3/3.2.0/share/OpenCV)
# The following folder will be included

include_directories(${PROJECT_SOURCE_DIR})
link_directories(${OpenCV_PATH}/lib )

#add_executable(main ${PROJECT_SOURCE_DIR}/src/*.cpp)
#TARGET_LINK_LIBRARIES (camera opencv_core opencv_videoio opencv_highgui opencv_imgproc opencv_video)

set(Application
  dash2
  )


#file(MAKE_DIRECTORY ${PROJECT_SOURCE_DIR}/src)
foreach(test ${Application})
  add_executable(${test} ${PROJECT_SOURCE_DIR}/src/${test}.cpp)
  target_link_libraries(${test} vncserver ${CMAKE_THREAD_LIBS_INIT}  opencv_core opencv_videoio opencv_highgui opencv_imgproc opencv_video)
endforeach(test ${Application})
