#!/bin/bash



# | Format Code | Description                         | Example      |
# | ----------- | ----------------------------------- | ------------ |
# | `%Y`        | Year (4 digits)                     | `2025`       |     
# | `%y`        | Year (last 2 digits)                | `25`         |
# | `%m`        | Month (01-12)                       | `07`         |
# | `%d`        | Day of month (01-31)                | `27`         |
# | `%A`        | Full weekday name                   | `Saturday`   |
# | `%a`        | Abbreviated weekday name            | `Sat`        |
# | `%B`        | Full month name                     | `July`       |
# | `%b`        | Abbreviated month name              | `Jul`        |
# | `%H`        | Hour (00-23)                        | `18`         |
# | `%I`        | Hour (01-12)                        | `06`         |
# | `%M`        | Minute (00-59)                      | `45`         |
# | `%S`        | Second (00-59)                      | `22`         |
# | `%p`        | AM/PM                               | `PM`         |
# | `%Z`        | Timezone abbreviation               | `PDT`        |
# | `%s`        | Unix timestamp (seconds since 1970) | `1753665822` |




get_time() {
	local current_time=$(date +"%H:%M:%S")
	echo $current_time
}
get_date(){
	local current_date=$(date +"%Y-%m-%d")
	echo $current_date
}

# echo "date --> $(get_date)"
# echo "time --> $(get_time)"


args=()
clear_array() {
	args=()
	echo "Array cleared."
}

show_array() {
	echo "Session records:"
	for i in "${args[@]}"; do
		echo "$i"
	done
}

save_array() {
	printf "%s\n" "${args[@]}" > file.txt
	echo "Array saved to file.txt"
	exit 0
}

while true; do
	read -p "Enter input: " input

	case "$input" in
		clear)
			clear_array
			;;
		end)
			echo "Script ended."
			break
			;;
		show)
			show_array
			;;
		save)
			save_array
			;;
		*)
			args+=("$input")
			;;
	esac
done








