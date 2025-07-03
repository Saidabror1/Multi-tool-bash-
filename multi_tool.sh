#!/bin/bash




function tub() {
    read -p "Son kiriting: " son
    if [ "$son" -le 1 ]; then
    echo "$son — tub son emas."
fi

tub=true

for (( i=2; i<son; i++ ))
do
    if (( son % i == 0 )); then
        tub=false
    fi
done

if $tub; then
    echo "$son — bu tub son."
else
    echo "$son — bu tub son emas."
fi
}

function kara_jadval {
    read -p "raqam kiriting: " num1

    for i in $( seq 1 10 )
    do
        echo "$num1 x $i = $((num1*i))"
    done
}

biggest() {
    read -p "Birinchi sonni kiriting: " num1
    read -p "Ikkinchi sonni kiriting: " num2
    read -p "Uchinchi sonni kiriting: " num3

    if [ "$num1" -gt "$num2" ] && [ "$num1" -gt "$num3" ]; then
        echo "Biggest: $num1"
    elif [ "$num2" -gt "$num3" ]; then
        echo "Biggest: $num2"
    else 
        echo "Biggest: $num3"
    fi
}

read -p "Tanlang (1 = tub, 2 = kara, 3 = eng katta son): " tanla

if [ "$tanla" = 1 ]; then
    tub
elif [ "$tanla" = 2 ]; then
    kara_jadval
elif [ "$tanla" = 3 ]; then
    biggest
else
    echo "Noto'g'ri tanlov."
fi