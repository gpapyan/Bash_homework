#!/bin/bash


# main () 
# {
# 	S=$(echo "$1" | tr -dc '{}()[]')
# 	while test ! -z "$S"
# 	do
# 		if echo "$S" | grep "()" > /dev/null
# 		then
# 			S=$(echo "$S" | sed 's/()//g')
# 		elif echo "$S" | grep "\[\]" > /dev/null
# 		then
# 			S=$(echo "$S" | sed 's/\[\]//g')
# 		elif echo "$S" | grep "{}" > /dev/null
# 		then
# 			S=$(echo "$S" | sed 's/{}//g')
# 		else
# 			echo false
# 			exit 0
# 		fi
# 	done
# 	echo true
# 	exit 0
# }

# main "$@"



declare -A braces=( [\[]=\] [\(]=\) [\{]=\} )
declare -a found=()
txt=$*
# For every character in input:
for i in $(seq 0 $(("${#txt}"-1)))
do
    # If it is an opening brace add a closing brace to array "found"
    if [[ -n ${braces[${txt:$i:1}]} ]]; then
        found+=(${braces[${txt:$i:1}]})
    else
        # Else check if it is a closing brace
        for brc in "${braces[@]}"
        do 
            # A closing brace in input should match the last element of "found", if so delete element
            if [[ $brc == "${txt:$i:1}" ]]; then
                if [[ $brc == "${found[*]: -1}" ]]; then
                    unset found[-1]
                # Else there are unmatched braces => exit
                else
                    echo "false"
                    exit 0
                fi
            fi
        done
    fi
done
[[ "${#found[@]}" -eq 0 ]] && echo true || echo false