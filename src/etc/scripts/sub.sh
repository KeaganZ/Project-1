function sub {
    read -p "Type the topic name: " topic_name
    read -p "Type the file name.csv: "file_name
    ros2 topic echo $topic_name --csv >> $file_name & 
}