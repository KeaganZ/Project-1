echo "Starting turtlesim"
ros2 run turtlesim turtlesim_node &

sleep 2

echo "Spawning turtle1"
ros2 run turtlesim spawn --ros-args -p x:=5.5 -p y:=5.5 -p theta:=0 turtle1 &

echo "Spawning turtle2"
ros2 run turtlesim spawn --ros-args -p x:=5.5 -p y:=5.5 -p theta:=0 turtle2 &

echo "Drawing s with turtle1"
ros2 topic pub -1 /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 4.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 3.14}}" &

echo "Drawing h with turtle2"
ros2 topic pub -1 /turtle2/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}" &

sleep 1

echo "Killing turtlesim"
ros2 node kill /turtlesim