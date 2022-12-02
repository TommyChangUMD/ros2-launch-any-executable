cmake_minimum_required(VERSION 3.8)
project(my_ros2_pkg)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
# uncomment the following section in order to fill in
# further dependencies manually.
# find_package(<dependency> REQUIRED)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()


## Install some arbitrary executables
install(PROGRAMS      # want to make the file executable (ie. chmod a+x)
  script/run_me.bash
  DESTINATION lib/${PROJECT_NAME})

## Install some data files
install(FILES          # just some arbitrary file
  data/some_input_file.txt
  DESTINATION lib/${PROJECT_NAME})

## Install launchers, if any
install(DIRECTORY
  launch
  DESTINATION share/${PROJECT_NAME}
)

ament_package()
