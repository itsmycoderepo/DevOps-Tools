#!/bin/bash

hour=$(date +%H)

if [ $hour -lt 12 ];
then
    echo "Good Morning"
elif [ $hour -lt 17 ];
then
    echo "Good Afternoon"
else
    echo "Good Night"
fi

echo "----------------------------------"
echo "Disk Usage Information"

disk=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

df -h /

if [ $disk -gt 80 ];
then
    echo "WARNING: Disk usage is above 80%"
    echo "Necessary Action: Clean unwanted files/logs"
else
    echo "Disk usage is under control"
fi

echo "----------------------------------"
echo "Memory Usage Information"

memory=$(free -m | awk 'NR==2 {print $3}')

free -h

if [ $memory -gt 500 ];
then
    echo "WARNING: Memory usage is high"
    echo "Necessary Action: Check running processes or restart services"
else
    echo "Memory usage is normal"
fi

echo "----------------------------------"
