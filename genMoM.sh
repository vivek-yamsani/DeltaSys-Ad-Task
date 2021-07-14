#!/bin/bash

awk -F "[ ,]" '{if(!a[$3]++) print $3}' attendance.log > dates.txt

while read date
do
    lat=$(cat attendance.log |grep "$date" | awk -F "[ _]" '{if($2<=10) print $0}' | tail -n 1 | awk '{print $1}')

    cd "/home/$lat"

    echo "this is the MoM of the meet dated on $date" > ${date}_mom
done < dates.txt