#!/usr/bin/env gnuplot

set title "Throughput sample"
set title font "Helvetica,18"

unset key
set terminal png size 1024,768
set dgrid3d 20,20
set view 70,45
set pm3d

set format x "%.0f"
set format y "%.0f"
set format z "%.0f"
set xlabel "Enabled items" offset 0,-1
set ylabel "History duration [day]" offset 0,-1
set zlabel "Read histories [thousand]" rotate by 90
set xtics offset 1,-0.5
set ytics offset 0,-0.5
#set xrange [0:30000]
#set yrange [0:100]
#set zrange [0:20000]
#set cbrange [0:20000]

set datafile separator ","
set output "output-throughput.png"
splot "result-read-throughput.csv" using 2:($3/60/60/24):($4/1000) with lines
