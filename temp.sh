#!/bin/bash

#Output example
#"CPU: 45°C"
#"GPU: 60°C"


#cpu
core0=$(sensors | grep "Core 0" |cut -c16-17)
core1=$(sensors | grep "Core 1" |cut -c16-17)
core2=$(sensors | grep "Core 2" |cut -c16-17)
core3=$(sensors | grep "Core 3" |cut -c16-17)

sumcpu=$(( core0 + core1 + core2 + core3 ))
cputemp=$(( sumcpu / 4))

#gpu
gputemp=$(sensors | grep "Core 0" |cut -c16-17)

echo ".o.o.o.o.o.o.o.o.o.o."
echo "|--- TEMPERATURE ---|"
echo "|     CPU: $cputemp°C     |"
echo "|     GPU: $gputemp°C     |"
echo "---------------------"
