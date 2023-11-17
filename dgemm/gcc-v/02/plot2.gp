set title "dgemm performace gcc 02 optimization"
set style data histograms
set xlabel "algo"
set ylabel "MiB/s"
set output "dgemm_02_gcc_speed.png"
set terminal png size 800,600
set style fill solid border -1

plot 'dgemm.dat' using 14:xtic(1) title "speed"
