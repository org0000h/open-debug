#!/bin/env sh 

read -p '
1. What kind of chipset?
    1. stm32f1x
    2. stm32f3x
    3. stm32f4x
' chipset

echo  "link: $link  chipset: $chipset"


chip_number=
if [ "$chipset" = "1" ]; then
    chip_number=1
elif [ "$chipset" = "2" ]; then
    chip_number=3
elif [ "$chipset" = "3" ]; then
    chip_number=4
fi
    
echo "source [find target/stm32f$chip_number.cfg]"> chipset.cfg;

chipname=
read -p '2. what chip name,for example: STM32F303VC
' chipname

target=
read -p '3.what target bin name in build, xxx.elf .for example: c6t6.elf
' target



sed "s/{chipname}/$chipname/g;s/{target}/$target/g"  launch-template.json > .vscode/launch.json

