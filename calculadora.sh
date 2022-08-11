#!/bin/bash
 
echo "Ingresa dos numeros : "
read numero1
read numero2
 
echo "Elige una acción:"
echo "1. Dividir"
echo "2. Sumar"
echo "3. Resta"
read accion # 1

case $accion in
  1)resultado=`echo "scale=2; $numero1 / $numero2" | bc`
  ;;
  2)resultado=`echo $numero1 + $numero2 | bc`
  ;;
  3)resultado=`echo  $numero1 -  $numero2 | bc`
  ;;
esac

echo "Resultado : $resultado"
