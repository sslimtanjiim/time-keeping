#!/bin/bash
echo "Welcome Corporate Slave <3<3"
args=()
get_time() {
	local current_time=$(date +"%H:%M:%S")
	echo $current_time
}
get_date(){
	local current_date=$(date +"%Y-%m-%d")
	echo $current_date
}
show_data(){
	for items in ${args[@]}; do
	echo "content-->$items"
	done
}



echo "Use \"[proecjt_name] [start]\" to start recorting time:"
while true; do
	read -r value
	if [[ "$value" = "end" ]];then
		break
	fi
	args+=("$value")
	echo "entered -> $value <-"
done

echo "you've enterd the follwing values"
for items in ${args[@]}; do
	echo "$items"
done

show_data

# generate report