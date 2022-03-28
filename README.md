# Camera Packages - DIME
This repository contains the setup instructions and links to for the all the camera packages for the official implementation of [DIME](https://arxiv.org/abs/2203.13251).

## Packages part of the Setup:
We install two ROS packages to setup the camera module:
- [AR_Tracker_Alvar](https://github.com/ros-perception/ar_track_alvar)
- [Realsense-ROS](https://github.com/NYU-robot-learning/Realsense-ROS-DIME)

## Setup instructions:
We advise you to use the `setup.sh` script in this repository to install all the required packages and setup the camera environment. 

## Launching the camera module:
1. Use the following command to run the ROSLaunch file for a Intel Realsense camera:
    ```
    roslaunch realsense2_camera rs_camera.launch camera:=cam_<camera_number> serial_no:=<camera_serial_number>
    ```
2. Use the following command to run the AR-tracker (we used a 4.4 cm AR tracker in the official implementation):
   ```
   rosrun ar_track_alvar individualMarkersNoKinect 4.4 0.04 0.04 /cam_<camera_number>/color/image_raw /cam_<camera_number>/color/camera_info cam_<camera_number>_link __name:=cam_<camera_number>_ar_tracker
   ```

You can get the data from the camera stream and AR trackers stream from the respective ROS topics: `/cam_<camera_number>/color/image_raw` and `/visualization_marker`.

## Citation
If you use this repo in your research, please consider citing the paper as follows:
```
@article{arunachalam2022dime,
  title={Dexterous Imitation Made Easy: A Learning-Based Framework for Efficient Dexterous Manipulation},
  author={Sridhar Pandian Arunachalam and Sneha Silwal and Ben Evans and Lerrel Pinto},
  journal={arXiv preprint arXiv:2203.13251},
  year={2022}
}
```