#!/bin/bash
#Jean-Luc Hayes 09/11/18

cd "$3"
csc -static "$3$1" -o "$3$2" && xterm -e "./$2; bash"
