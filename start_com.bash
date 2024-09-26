#!/bin/bash


# Open a new terminal and start XRCE_Agent 
gnome-terminal --tab --command="bash -c 'MicroXRCEAgent serial --dev /dev/ttyTHS1 -b 921600'"


# Open another terminal and source PX4 ros WS 
gnome-terminal --tab --command="bash -c 'cd ~/ws_sensor_combined; source install/setup.bash; echo \"~~~~ ros2 px4 ws sourced here ~~~~\"; bash'"


