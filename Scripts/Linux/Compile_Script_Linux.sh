#!/bin/bash
#Jean-Luc Hayes 09/11/18

csc -static $1 -o $2 && xterm -e "./$2; bash"