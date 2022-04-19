#!/bin/bash
read x
n=$(echo $x | wc -c)
let n=$n-2
#echo $n
for (( i=$n ; i>=0 ; i-- ))
do
echo -n ${x:$i:1} 
done

echo -e

rm -f temp.txt
n=$(echo $x | wc -c)
let n=$n-2
y=""
#echo $n
for (( i=$n ; i>=0 ; i-- ))
do
echo -n ${x:$i:1} >> temp.txt
done
cat temp.txt | read x 
echo $x | tr "abcdefghijklmnopqrstuvwxyz" "bcdefghijklmnopqrstuvwxyza" | tr "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "BCDEFGHIJKLMNOPQRSTUVWXYZA" 

rm -f temp.txt

n=$(echo $x | wc -c)
let n=$n-1
n=`expr $n/2`
let n=$n-1
#echo $n
for (( i=$n ; i>=0 ; i-- ))
do
echo -n ${x:$i:1} 
done

echo -n ${x:$n+1} 