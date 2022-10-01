#!/bin/bash

unfloat () {
	bc -l <<< "a=${1:-0}; b=${2:-0}; c=${3:-0}; \
scale=0; while (a!=a/1 || b!=b/1 || c!=c/1) {a*=10; b*=10; c*=10}; \
a/1; b/1; c/1" | sort -n
}
isTriangle () {
	(( $1 > 0 )) && (( $2 > 0 )) && (( $3 > 0)) && (( $1 + $2 >= $3))
}
isEquilateral () {
	(($1 == $2)) && (($1 == $3)) && (($2 == $3))
}
isIsosceles () {
	(($1 == $2)) || (($1 == $3)) || (($2 == $3))
}
main () {

	local -a sides
	readarray -t sides < <(unfloat "$2" "$3" "$4")
	
	if ! isTriangle "${sides[@]}"; then
		echo "false"
		exit 0
	fi
	
	case "${1,,}" in
		equilateral)
			isEquilateral "${sides[@]}" && echo "true" || echo "false";;
		isosceles)
			isIsosceles "${sides[@]}" && echo "true" || echo "false";;
		scalene)
			isIsosceles "${sides[@]}" && echo "false" || echo "true";;
		*)
			printf "Unknown triangle type '%s'\n" "$1" >&2
			exit 1;;
	esac
}
main "$@"