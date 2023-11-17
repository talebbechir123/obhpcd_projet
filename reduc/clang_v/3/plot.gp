
set title "reduc performace clang 03 optimization"
set style data histograms
set xlabel "title"
set ylabel " stddev (%)"
set output "reduc_03_clang_stability.png"
set terminal png size 800,600
set style fill solid border -1

plot 'reduc.dat' using 13:xtic(1) title "stability"

