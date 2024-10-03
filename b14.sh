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
read -p "Them phan tu tai vi tri: " v
((v=v-1))
read -p "Phan tu can them la: " x 
if (( v<0 || v>n )); then
echo "Vi tri khong dung"
exit 1
fi
arr=("${arr[@]:0:v}" "$x" "${arr[@]:v}")
echo "Cac phan tu cua mang: ${arr[@]}"