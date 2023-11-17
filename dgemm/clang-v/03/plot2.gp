set title "dgemm performace clang 03 optimization"
set style data histograms
set xlabel "algo"
set ylabel "MiB/s"
set output "dgemm_03_clang_speed.png"
set terminal png size 800,600
set style fill solid border -1

plot 'dgemm.dat' using 14:xtic(1) title "speed"


