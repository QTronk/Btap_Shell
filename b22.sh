#Viết một shell script để tìm phần tử lớn nhất trong mảng 2 chiều.
#!/bin/sh
declare -A arr
read -p "Chieu dai mang: " n
read -p "Chieu rong mang: " m
for (( a=0; a<n; a++)); do 
  for ((b=0; b<m; b++)); do
  read -p " Nhap mang arr[$a][$b]: " numb
  arr[$a,$b]=$numb
    if (( arr[$a,$b] > max )) ; then
    max=${arr[$a,$b]}
    fi
  done
done
echo "${arr[0,0]}"
echo "Phan tu lon nhat: $max"