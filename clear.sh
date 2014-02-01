destroy() {

	resources=(

		"src"
		".go-env"
		"pkg"
	)

	for resource in "${resources[@]}"
	do

		rm -rf $(pwd)/$resource
	done
}

destroy_help() {

	echo "destroy: current go-environment"
}
