# ros2_launch_any_executable

This ROS 2 package shows how you can launch (or package) any excutable, including bash scripts.

## How to compile

```
colcon build --packages-select my_ros2_pkg
source install/setup.bash
```

## How to run the executable using ROS 2 run

```
ros2 run my_ros2_pkg run_me.bash
# or
MY_PARAM="hello" ros2 run my_ros2_pkg run_me.bash
```


## How to run the executable using ROS 2 launch

```
ros2 launch my_ros2_pkg demo.launch.py
# or
MY_PARAM="hello" ros2 launch my_ros2_pkg demo.launch.py
```

## References

https://roboticsbackend.com/ros2-launch-file-example/

