cmake_minimum_required(VERSION 2.8)

PROJECT(fisheye_calibrate)

SET( sources 	fisheye_calibration.cpp    )

FIND_PACKAGE ( OpenCV 3.4 REQUIRED )

LINK_LIBRARIES( ${OpenCV_LIBS} )

add_compile_options( -w -fvisibility=hidden)

add_executable( fisheye_calibration fisheye_calibration.cpp)


