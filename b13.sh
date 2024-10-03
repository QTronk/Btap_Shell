#!/bin/sh
read -p "Nhap vao 1 mang n so, n: " n
i=0
arr=()
while [ $i -lt $n ] ; do 
echo -n "Nhap so thu $((i+1)): "
read arr[i]
#arr[i]=$numb
(( i++ ))
done
for ((a=0; a<n-1; a++)) ; do
    for ((b=0; b<n-a-1; b++)); do 
    if [ ${arr[b]} -gt ${arr[b+1]} ] ; then
    temp=${arr[b]}
    arr[b]=${arr[b+1]}
    arr[b+1]=$temp
    fi
  done
done
echo "Cac phan tu cua mang: ${arr[@]}"