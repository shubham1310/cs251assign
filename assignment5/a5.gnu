#!/usr/bin/gnuplot
set term postscript eps enhanced color 24

set output 'graph.eps'

set xlabel "x"
set ylabel "Function"

set title "Probability Distributions"

set key top left
#set key 5,500
set xrange [0:50]
set yrange [0:1]
#set noxtics
#set noytics
#set xtics 4
#set ytics 0.5
#
#set nolabel
set label "{np}" at 15,0.2
set label "{/Symbol l}" at 15,0.3
set label "{/Symbol m}" at 15,0.4
plot 'a5' u 1:2 title "Binomial distribution" w lp, 'a5' u 1:3 title "Poisson distribution" w lp, 'a5' u 1:4 title "Gaussian distribution" w lp
