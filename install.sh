###
###	PRIVATE FUNCTIONS
###
create_goenv() {

	# create the script that will be sourced at the beginning of each sessions
	echo > $(pwd)/.goenv
	
	# now create alias script for sourcing
	# this script should be sourced
	echo "alias go='GOPATH=$(pwd) go'" > $(pwd)/.goenv
}

install_packages() {

	# note include functionality
	if [ -f $1 ]
	then
		# loop through and export the file as needed
		# remove all comments and empty lines before hand
		awk 'NF' $1 | grep -v \# | while read line 
		do
			
			GOPATH=$(pwd) go get $line
			
		done
	fi
}

###
###	PUBLIC FUNCTIONS
###
install() {
	
	install_packages $(pwd)/gofile
	create_goenv
}

install_help() {

	echo "install: install all go dependencies in gofile"
}


