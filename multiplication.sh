#!/bin/bash

echo "🧮 Welcome to Shell Calculator"
echo "-----------------------------"

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

echo "Choose operation ( * ):"
read op

case $op in
#  +)
 #   result=$(echo "$num1 + $num2" | bc)
  #  ;;
#  -)
#    result=$(echo "$num1 - $num2" | bc)
#    ;;
  '*')
    result=$(echo "$num1 * $num2" | bc)
    ;;
  /)
    if [ "$num2" -eq 0 ]; then
      echo "🚫 Error: Division by zero"
      exit 1
    fi
    result=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "❌ Invalid operation"
    exit 1
    ;;
esac

echo "✅ Result: $num1 $op $num2 = $result"

