set title "reduc performace gcc 02 optimization"
set style data histograms
set xlabel "algo"
set ylabel "MiB/s"
set output "reduc_02_gcc_speed.png"
set terminal png size 800,600
set style fill solid border -1

plot 'reduc.dat' using 15:xtic(1) title "speed"
