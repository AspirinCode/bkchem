#!/bin/bash

shopt -s extglob
for i in `ls -d ../?(??|??_??)`
do
  mkdir -p ${i}/LC_MESSAGES
  msgfmt ${i}/BKChem.po -o ${i}/LC_MESSAGES/BKChem.mo
done
