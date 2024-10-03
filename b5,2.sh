read -p "So:" a
if [ $a -lt 2 ]; then 
  echo "khong phai so nguyen to"
  exit 1
fi
echo "Cac so nguyen to nho hon $a lan luot la: "
for ((i=2; i<a; i++))
do 
  check=true
  for ((j=2; j<i; j++))
  do
    if [ $((i%j)) -eq 0 ]; then
      check=false
      break
    fi
  done
  if $check; then
    echo $i
  fi
done