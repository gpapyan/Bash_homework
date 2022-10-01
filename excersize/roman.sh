#!/bin/bash


# dec=(1000 900 500 400 100 90 50 40 10 9 5 4 1 )
# nums=( M CM D CD C XC L XL X IX V IV I )
# number=$1
# for (( idx=0; idx<${#dec[@]}; idx++ )); do
#     while (( number / dec[idx] > 0 )); do
#         out+=${nums[idx]}
#         (( number -= dec[idx] ))
#     done
# done
# echo $out


main() {
    nn=$1
    units=(M CM D CD C XC L XL X IX V IV I)
    vals=(1000 900 500 400 100 90 50 40 10 9 5 4 1)
    numeral=""
    for i in $(seq 0 $((${#units[@]}-1))); do
        key=${units[$i]}
        val=${vals[$i]}
        factor=$(( nn / val ))
        if [[ $factor -gt 0 ]]; then
            numeral=$numeral$(printf "%0.s$key" $(seq 1 $factor))
            nn=$(( nn - factor*val ))
        fi
    done
    echo $numeral
}
main "$@"