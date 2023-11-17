
set title "reduc performace gcc 02 optimization"
set style data histograms
set xlabel "title"
set ylabel " stddev (%)"
set output "reduc_02_gcc_stability.png"
set terminal png size 800,600
set style fill solid border -1

plot 'reduc.dat' using 13:xtic(1) title "stability"

