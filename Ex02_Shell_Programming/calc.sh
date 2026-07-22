#!/bin/bash
echo "================================="
echo "    Ex 2: Simple Calculator      "
echo "================================="
echo "Enter First Number:"
read a
echo "Enter Second Number:"
read b

echo -e "\nResults:"
echo "Addition       : $((a + b))"
echo "Subtraction    : $((a - b))"
echo "Multiplication : $((a * b))"
if [ $b -ne 0 ]; then
    echo "Division       : $((a / b))"
else
    echo "Division by zero not possible"
fi
