#Viết một shell script để tính tổng các phần tử của từng hàng và từng cột trong mảng 2 chiều. 
#!/bin/sh
read -p "So dong mang: " n
read -p "So cot mang: " m
declare -A arr
for (( a=0; a<n; a++)); do 
  for (( b=0; b<m; b++)); do
    read -p "Nhap phan tu dòng $((a+1)), cot $((b+1)): " numb
    arr[$a,$b]=$numb
    dong[$a]=$(( dong[$a] + arr[$a,$b] ))
  done
done
for (( b=0; b<m; b++)); do
  for (( a=0; a<n; a++)); do 
      cot[$b]=$(( cot[$b] + arr[$a,$b] ))
  done
done
echo "Toan bo mang theo ma tran:"
for (( a=0; a<n; a++)); do 
  for (( b=0; b<m; b++)); do
    echo -n  " ${arr[$a,$b]} "
  done
  echo
done
for i in "${!dong[@]}" ; do
  echo "Tong phan tu dong $((i+1)): ${dong[$i]}"
done
for j in "${!cot[@]}" ; do
  echo "Tong phan tu cot $((j+1)): ${cot[$j]}"
done