set title "reduc performace clang 01 optimization"
set style data histograms
set xlabel "algo"
set ylabel "MiB/s"
set output "reduc_01_clang_speed.png"
set terminal png size 800,600
set style fill solid border -1

plot 'reduc.dat' using 15:xtic(1) title "speed"
