# fisheye_calibration
An OpenCV-based calibration program for fisheye cameras.

Features:
- The code is extended from the OpenCV file camera_calibration.cpp.
- Some cute extensions are added, such as reprojection of points to the image and undistorting all images.



# USAGE:
./fisheye_calibration calib_config.xml


Example:
./fisheye_calibration calib_config/calib_config_example.xml


Call calibrate_example.sh to try out an example with some calibration files from a fisheye camera.

# CUSTOMIZE YOUR CALIBRATION
Instructions: 
- Copy the xml file to calib_config/my_calib_config.xml
- Edit calib_config/my_calib_config.xml. Please note that my_calib_config.xml contains a reference to the file named calib_images_example.xml. Edit calib_images_example.xml to include your own images.
- All configuration parameters for the calibration are stored at calib_config.xml
- The result of the calibration is written to out_camera_data.yml
- To calibrate for fisheye/pinhole camera, change the setting at calib_config.xml

# NOTES
Fisheye cameras are difficult to calibrate. Some caution must be observed when changing the parameters in the calib config file. In particular:
- The Kannala Fisheye model is selected with:
<Calibrate_UseFisheyeModel>1</Calibrate_UseFisheyeModel>
- Leave the Aspect ratio fixed.
<Calibrate_FixAspectRatio> 1 </Calibrate_FixAspectRatio>
- Consider that the principal point is at the image center
<Calibrate_FixPrincipalPointAtTheCenter> 1 </Calibrate_FixPrincipalPointAtTheCenter>

# INSTALL
Just run:
$ cmake .
$ make

# DEPENDENCIES
Needs:
- OpenCV >= 3.4

