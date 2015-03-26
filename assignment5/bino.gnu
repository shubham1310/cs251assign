#!/usr/bin/gnuplot

set term postscript eps enhanced 24

set output 'bino.eps'

set title "Binomial distribution (10^3 size)"

set key at 50,120

set xlabel "x"
set ylabel "frequency"
set xrange [0:50]
set xtics 5
#set boxwidth 0.5

#set style fill solid 0.25
set style fill pattern border
#set style fill pattern 2

#set style data histograms
set style histogram columnstacked

plot 'bino' u 1:2 title "" w boxes
