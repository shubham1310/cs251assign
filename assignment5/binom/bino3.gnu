#!/usr/bin/gnuplot

set term postscript eps enhanced 24

set output 'bino3.eps'

set title "Binomial distribution (10^6 size)"

set xlabel "x"
set ylabel "frequency"
set xrange [0:50]
set xtics 5
set style fill pattern border
Min = -0.5 
Max = 50.5
n = 51
width = (Max-Min)/n
hist(x,width) = width*(floor((x-Min)/width)+0.5)
set style histogram columnstacked

plot 'bino3' u (hist($1,1.0)):(1.0) title "" smooth freq w boxes