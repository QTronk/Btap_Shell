#!/bin/sh
read -p "Nhap vao 1 mang n so, n: " n
i=0
arr=()
while [ $i -lt $n ] ; do 
echo -n "Nhap so thu $((i+1)): "
read numb
arr[i]=$numb
(( i++ ))
done
for ((a=0; a<n-1 ; a++)) ; do
if (( ${arr[a]} % 2 != 0 )); then
  for ((b=a+1; b<n  ; b++)); do 
  if (( ${arr[b]} % 2 != 0 )); then
    if (( ${arr[a]} > ${arr[b]} )) ; then
    temp=${arr[a]}
    arr[a]=${arr[b]}
    arr[b]=$temp
    fi
  fi
  done
fi	
done
echo "Cac phan tu cua mang: ${arr[@]}"