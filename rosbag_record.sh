#rosrun tf static_transform_publisher 0 0 0 0 0 0 1.0 map laser 10
rosparam set use_sim_time false
cd $HOME/playground 
rosbag record -O casa_odom.bag /scan /tf
