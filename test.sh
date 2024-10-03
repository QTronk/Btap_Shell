#!/bin/sh
declare -A arr
read -p "Chieu dai mang: " n
read -p "Chieu rong mang: " m
for (( a=0; a<n; a++)); do 
  for ((b=0; b<m; b++)); do
  echo " Nhap mang arr[$a][$b]"
  read numb
  arr[$a,$b]=$numb
  echo "a là: $a"
  echo "b là: $b"
echo " mảng arr[$a][$b]là: ${arr[$a,$b]}"
for key in "${!arr[@]}"; do
  echo "Key: $key => Value: ${arr[$key]}"
done
  done
done
c=0
d=0
echo "${arr[$c,$d]}"
echo "${arr[0,0]}"
echo "${arr[0,1]}"
echo "${arr[1,0]}"
echo "${arr[1,1]}"