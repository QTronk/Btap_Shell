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
echo -n "Xoa phan tu thu: "
read temp
unset arr[$temp-1]
echo "Cac phan tu cua mang: ${arr[@]}"
