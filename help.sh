# call the help menu for each of our subscripts 
help_command() {

	echo -e "Help"
	for command in "${!commands[@]}"
	do
		
		echo -e "\t$("${command}_help")"
	done

	echo -e ""
}
