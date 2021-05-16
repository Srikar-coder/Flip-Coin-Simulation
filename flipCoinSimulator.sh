#!/bin/bash -x

for ((var=1; var<=10; var++))
do
toss=$((RANDOM%2))

if [ $toss -eq 0 ]
then
((Heads++))
else
((Tails++))
fi
done
echo number of heads $Heads
echo number of tails $Tails
