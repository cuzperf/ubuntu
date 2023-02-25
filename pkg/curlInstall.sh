#!/bin/bash

url=$1
debName=$2

curl -s -S -LO "$url" && sudo dpkg -i "$debName"
rm $debName
