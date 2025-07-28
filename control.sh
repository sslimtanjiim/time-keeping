#!/bin/bash

get_time() {
	echo $(date +"%H:%M:%S")
}
get_date(){
	echo $(date +"%Y-%m-%d")
}
data_show(){
	for items in "${args[@]}"; do
		echo "content-->$items"
	done
}
date_generate(){
	echo "generating data, check report"
	data_show
}

echo 'Welcome Corporate Slave <3<3'
echo 'Use "[project_name] [start]" to start recording time:'

while true; do
	read -r alue
	if [[ "$value" == "end" ]]; then
		break
	fi
	args+=("$value")
	echo "entered -> $value <-"
done

date_generate
