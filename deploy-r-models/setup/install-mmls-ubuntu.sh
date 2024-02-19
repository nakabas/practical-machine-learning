#!/bin/bash
declare password=""

# Initialize parameters specified from command line
while getopts ":p:" arg; do
	case "${arg}" in
		p)
			password=${OPTARG}
			;;
		esac
done
shift $((OPTIND-1))

if [[ -z "$password" ]]; then
	while : ; do
		ec