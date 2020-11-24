# !/bin/bash 
# Programa para revisar los tipos de operadores
# Author: Jorge Tokunaga

A=10
B=4
echo "Variables: A=$A , B=$B"
echo "=============================="
echo "Operadores aritméticos básicos"
echo "=============================="

echo "A+B=" $((A+B))
echo "A-B=" $((A-B))
echo "A*B=" $((A*B))
echo "A/B=" $((A/B))
echo "A%B=" $((A%B))

x=A
y=B

echo "-----------------------------"
echo "Operadores relacionales"
echo "-----------------------------"

echo "x>y:" $((x > y))
echo "x≥y:" $((x >= y))
echo "x<y:" $((x < y))
echo "x≤y:" $((x <= y))
echo "x>0:" $((x > 0))
echo "x≥0:" $((x >= y))
echo "x<0:" $((x < 0))
echo "x≤0:" $((x <= y))

echo "--------------------------------"
echo "Operadores de asignación básicos"
echo "--------------------------------"
echo "x+=y :" $((x +=y ))
echo "x-=y :" $((x -=y ))
echo "x*=y :" $((x *=y ))
echo "x/=y :" $((x /=y ))
echo "x%=y :" $((x %=y ))
