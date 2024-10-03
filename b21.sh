#Viết một shell script để nhập vào một mảng 2 chiều (kích thước m x n) và tính tổng tất cả các phần tử của mảng đó
#!/bin/sh
read -p "Chieu dai mang: " n
read -p "Chieu rong mang: " m
for (( a=0; a<n; a++)); do 
  for ((b=0; b<m; b++)); do
  echo -n " Nhap mang arr[$a][$b]: "
  read numb
  arr[$a,$b]=$numb
  sum=$(( sum + arr[$a,$b] ))
  done
done
echo "Tong tat ca phan tu cua mang: $sum"