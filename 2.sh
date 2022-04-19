#!/bin/bash
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
# echo $i  #redirect here if you want the output in a seperate file
        #copy it to quotes.txt if you want to modify quotes.txt
done






cat temp2.txt | while read i
do
    if [[ $i == "" ]]
    then
        continue
    fi

    echo $i |  awk -F "~" '{print $2 " once said, " "\"" $1 "\"" }' >> uwu.txt
done
cp uwu.txt speech.txt
rm uwu.txt
rm temp2.txt
