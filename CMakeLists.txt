cmake_minimum_required(VERSION 2.8)

PROJECT(camera_calibrate)

SET( sources
    	camera_calibration.cpp
    )

FIND_PACKAGE ( OpenCV 3.4 REQUIRED )

LINK_LIBRARIES( ${OpenCV_LIBS} )

add_compile_options( -w -fvisibility=hidden)

add_executable( camera_calibration camera_calibration.cpp)


