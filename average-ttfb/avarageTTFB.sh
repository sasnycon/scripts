#!/bin/bash
x=1
while [ $x -le $2 ]
do
 curl -o /dev/null \
     -H 'Cache-Control: no-cache' \
          -s \
               -w "$x. Connect time: %{time_connect}, TTFB: %{time_starttransfer}, Total time: %{time_total} \n" \
                    $1 >> tempTest.txt
                    echo "Executing test $x"
    x=$(( $x + 1 ))
    done
echo "================="
echo " Test Completed! "
echo "================="
echo
echo
connect=$(awk '{ total += $4 } END { print total/NR }' tempTest.txt)
echo "Avarage Conect time: $connect"

ttfb=$(awk '{ total += $6 } END { print total/NR }' tempTest.txt)
echo "Avarage TTFB time: $ttfb"

total=$(awk '{ total += $9 } END { print total/NR }' tempTest.txt)
echo "Avarage Total Time: $total"
rm tempTest.txt