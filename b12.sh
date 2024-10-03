#!/bin/sh
read -p "Nhap vao 1 mang n so, n: " n
i=0
while [ $i -lt $n ] ; do 
(( i++ ))
echo -n "Nhap so thu $i: "
read temp
arr[i]=$temp
done
echo "Cac phan tu cua mang: ${arr[@]}"