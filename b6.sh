#!/bin/bash
var=3
read -p "Nhap 2 so a b trong phuong trinh bac nhat ax+b=0: " a b
if [ $a -eq 0 ]; then
  echo "Gia tri a phai khac 0"
  exit 1
fi
result=$(( -b / a ))
echo  "Vay x = $result"
echo ivhie hfrbirfhi $result
message=Giátrị:$var
echo $message