set title "dotprod performace gcc 03 optimization"
set style data histograms
set xlabel "algo"
set ylabel "MiB/s"
set output "dotprod_03_gcc_speed.png"
set terminal png size 800,600
set style fill solid border -1

plot 'dotprod.dat' using 15:xtic(1) title "speed"
