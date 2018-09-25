#!/bin/bash

echo primer filtrado

rm guardado1.txt
rm guardado0.txt
sleep 2s
sudo iwlist wlp2s0 scanning
./filtrado_python.sh>>guardado1.txt
sed '1d' guardado1.txt>>guardado0.txt
./ordenado.sh

echo primer filtrado finalizado
echo segundo filtrado

rm guardado11.txt
rm guardado01.txt
sleep 10s
sudo iwlist wlp2s0 scanning
./filtrado_python.sh>>guardado11.txt
sed '1d' guardado11.txt>>guardado01.txt
./ordenado1.sh

echo segundo filtrado finalizado
echo tercer filtrado

rm guardado12.txt
rm guardado02.txt
sleep 10s
sudo iwlist wlp2s0 scanning
./filtrado_python.sh>>guardado12.txt
sed '1d' guardado12.txt>>guardado02.txt
./ordenado2.sh

echo tercer filtrado finalizado
sleep 2s
echo comenzando la media de valores
./juntar_de_tabla_total.sh

echo reseteo de las tablas de Prueba
./borrar_tablas.sh
echo FIN



