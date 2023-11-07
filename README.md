# ros2_launch_any_executable

This ROS 2 package shows how you can launch (or package) any excutable, including bash scripts.

## How to compile

```
colcon build --packages-select my_ros2_pkg
source install/setup.bash
```

## How to run the executable using ROS 2 run

Usage:
``` bash
$ ros2 run my_ros2_pkg run_me.bash -h

Usage:
  run_me.bash [-h | -m message]

Example:
  run_me.bash
  run_me.bash -m hello
```
  
Run:
```bash
ros2 run my_ros2_pkg run_me.bash 
# or
ros2 run my_ros2_pkg run_me.bash -m hello
```


## How to run the executable using ROS 2 launch

Usage:
``` bash
$ ros2 launch my_ros2_pkg demo.launch.py -s

'msg_to_print':
    Message to print.
    (default: 'hello')
```

Run:
``` bash
ros2 launch my_ros2_pkg demo.launch.py
# or
ros2 launch my_ros2_pkg demo.launch.py msg_to_print:=bye
```

## References

https://roboticsbackend.com/ros2-launch-file-example/

