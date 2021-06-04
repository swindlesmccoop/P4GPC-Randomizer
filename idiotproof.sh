#!/bin/bash
set -e

echo "Please drag and drop your data_e dump onto here":
read dump

cd "$dump"

touch worked.txt

if [[ -d battle ]]
then
    echo "Getting ready for randomization..."
fi