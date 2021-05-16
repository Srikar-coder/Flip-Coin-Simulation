#!/bin/bash -x

Heads=0
Tails=0
for ((;;))
do
toss=$((RANDOM%2))

if [ $toss -eq 0 ]
then
((Heads++))
else
((Tails++))
fi
if [[ Heads -eq 21 || Tails -eq 21 ]]
then
break
fi
done
if [ $Heads -eq $Tails ]
then
echo It is a Tie
elif [ $Heads -gt $Tails ]
then
echo Heads won by $(($Heads-$Tails)) ponits
else
echo Tails won by $(($Tails-$Heads)) points
fi
