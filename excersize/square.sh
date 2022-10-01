#! /bin/bash

sz=$(( ${1:-10} - 2 ))

printf -v xBlk '%-*s' ${sz} ''
xAst="${xBlk//?/*}"
xRow="${xAst//?/ x}"

printf '*%s*\n' "${xAst}"
for r in ${xRow}; do printf '*%s*\n' "${xBlk}"; done
printf '*%s*\n' "${xAst}"