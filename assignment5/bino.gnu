#!/usr/bin/gnuplot

set term postscript eps enhanced 24

set output 'bino.eps'

set title "Binomial distribution"

set key top left

set xrange [0:50]
set xtics 1
#set boxwidth 0.5

#set style fill solid 0.25
set style fill pattern border
#set style fill pattern 2

#set style data histograms
set style histogram columnstacked

plot 'bino' u 1:2 title "Func" w boxes
