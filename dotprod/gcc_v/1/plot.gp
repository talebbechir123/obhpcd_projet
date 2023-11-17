
set title "dotprod performace gcc 01 optimization"
set style data histograms
set xlabel "title"
set ylabel " stddev (%)"
set output "dotprod_01_gcc_stability.png"
set terminal png size 800,600
set style fill solid border -1

plot 'dotprod.dat' using 13:xtic(1) title "stability"

