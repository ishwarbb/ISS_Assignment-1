#!/bin/bash
read filename

ls -l $filename | awk -F " " '{print$5}'

wc $filename | awk -F " " '{print$1}'

wc $filename | awk -F " " '{print$2}'

lineno=1
cat $filename | while read i
do 
echo -n "line no: $lineno - Count of Words: "
echo $i | wc | awk -F " " '{print$2}'
let lineno=$lineno+1
done



rm -f temp.txt
rm -f temp3.txt

touch temp3.txt

cat $filename | while read i
do
n=$(echo $i | wc | awk -F " " '{print$2}')
x=1
while (( $x <= $n ))
do
echo $i | tr -s " " | cut -d " " -f $x >> temp.txt
let x=x+1
done
done

cat temp.txt | while read i
do

if [[ $i == "" ]]
then
continue
fi

x=$(grep -c $i temp.txt)

if [[ $(grep -c $i temp3.txt) -gt 0 ]]
then 
continue
fi

echo $i >> temp3.txt

echo Word:$i Count:$x
done

rm temp.txt
rm temp3.txt
