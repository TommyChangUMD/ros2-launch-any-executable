from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():
    ld = LaunchDescription()

    # define the launch parameters:
    my_launch_args = DeclareLaunchArgument(
        'msg_to_print', default_value='hello',
        description='Message to print.'
    )

    # define the executable to run:
    my_node = Node(
        package="my_ros2_pkg",
        executable="run_me.bash",
        output="screen",
        arguments=['-m', LaunchConfiguration('msg_to_print')]
    )

    # add everything to the launch description
    ld.add_action(my_launch_args)
    ld.add_action(my_node)

    return ld
