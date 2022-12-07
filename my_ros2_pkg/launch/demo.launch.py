from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    ld = LaunchDescription()

    my_node = Node(
        package="my_ros2_pkg",
        executable="run_me.bash",
        output="screen"
    )

    ld.add_action(my_node)

    return ld
