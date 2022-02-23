# program in the following steps
#a. Roll a die and find the number between 1 to 6
#b. Repeat the Die roll and find the result each time
#c. Store the result in a dictionary
#d. Repeat till any one of the number has reached 10 times
#e. Find the number that reached maximum times and the one that was for minimum times

dice=0
while (( result[$dice] < 10 ))
do
    dice=$((RANDOM%6+1))
    result[$dice]=$(( ${result[$dice]} + 1 ))
done

echo "Dice number: " ${!result[@]}
echo "Dice Number times: " ${result[@]}
echo "Max Repeated Dice Number: " $dice

min=1
for(( count=1; count<=6; count++ ))
do
  if (( ${result[$min]} > ${result[$count]} ))
  then
       min=$count
  fi
done

echo "Min Repeated Dice Number: " $min
