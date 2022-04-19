#!/bin/bash

cat quotes.txt | while read i
do
    if [[ $i == "" ]]
    then
        continue
    fi

    echo $i 
    #redirect here if you want the output in a seperate file
        #copy it to quotes.txt if you want to modify quotes.txt
done
rm -rf uwu.txt

rm -rf temp2.txt
touch temp2.txt
cat quotes.txt | while read i
do

if [[ $i == "" ]]
then
continue
fi

x=$(grep -c "$i" temp2.txt)

if [[ $x > 0 ]]
then
continue
fi

echo $i >> temp2.txt
echo $i  #redirect here if you want the output in a seperate file
        #copy it to quotes.txt if you want to modify quotes.txt
done

rm temp2.txt

