#!/bin/bash
read s
IFS=',' read -ra x <<< "$s"
noofelements=${#x[*]}

for (( i = 0;i < $noofelements;i++ ))
do
    for (( j = 0;j < $noofelements-1  ; j++ ))
    do
    # echo i = $i and j = $j
    # echo checking if ${x[j]} is gt ${x[$((j+1))]} 
        if [[ ${x[j]} -gt ${x[$((j+1))]} ]]
        then
            # echo I am swapping ${x[j]} and ${x[$((j+1))]}
            temp=${x[j]}
            x[$j]=${x[$((j+1))]}  
            x[$((j+1))]=$temp
        fi
    done
done

echo ${x[*]}
