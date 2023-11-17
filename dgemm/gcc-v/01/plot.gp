
set title "dgemm performace gcc 01 optimization"
set style data histograms
set xlabel "title"
set ylabel " stddev (%)"
set output "dgemm_01_gcc_stability.png"
set terminal png size 800,600
set style fill solid border -1

plot 'dgemm.dat' using 12:xtic(1) title "stability"

