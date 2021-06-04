#!/bin/sh

cd ..
cd ..

echo "Please drag and drop your data_e dump onto here":
read dump

cd "$dump"

echo "Press any key to continue"
while [ true ] ; do
read -t 3 -n 1
if [ $? = 0 ] ; then
exit ;
else
echo "waiting for the keypress"
fi
done

touch worked.txt

if [[ -d battle ]]
then
    echo "Getting ready for randomization..."
fi