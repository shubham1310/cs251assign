#!/usr/bin/gnuplot

set term postscript eps enhanced 24

set output 'bino1.eps'

set title "Binomial distribution (10^4 size)"

set xlabel "x"
set ylabel "frequency"
set xrange [0:50]
set xtics 5
set style fill pattern border
set style histogram columnstacked

plot 'bino1' u 1:2 title "" w boxes
