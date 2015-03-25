#!/usr/bin/gnuplot
set term postscript eps enhanced color 24

set output 'graph.eps'

set xlabel "x"
set ylabel "Function"

set title "Probability Distributions"

#set key top left
set key at 50,0.14
set xrange [0:50]
set yrange [0:0.14]
set label "{np}" at 15,0.136
set label "{/Symbol l}" at 15,0.095
set label "{/Symbol m}" at 15,0.13
plot 'a5' u 1:2 title "Binomial distribution" w lp, 'a5' u 1:3 title "Poisson distribution" w lp, 'a5' u 1:4 title "Gaussian distribution" w lp
