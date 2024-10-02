#!/bin/env sh 

read -p '
What kind of chipset?
1. stm32f1x
2. stm32f3x
3. stm32f4x
' chipset

echo  "link: $link  chipset: $chipset"


chip_number=99
if [ "$chipset" = "1" ]; then
    chip_number=1
elif [ "$chipset" = "2" ]; then
    chip_number=3
elif [ "$chipset" = "3" ]; then
    chip_number=4
fi
    
echo "source [find target/stm32f$chip_number.cfg]"> chipset.cfg;