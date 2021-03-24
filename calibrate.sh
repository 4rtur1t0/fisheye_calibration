# must output calib_data_front.yml or calib_data_back.yml
./camera_calibration calib_config.xml 

python camera_calibration_show_extrinsics.py --calibration calib_data_front.yml
python camera_calibration_show_extrinsics.py --calibration calib_data_back.yml

