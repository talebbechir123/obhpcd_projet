set title "dgemm performace clang/gcc 01 optimization"
set style data histograms
set xlabel "title"
set ylabel "stddev(%)"
set y2label "speed"
set output "dgemm_01_clang_gcc_comp.png"
set terminal png size 1000,600
set style fill solid border -1


plot './clang-v/01/dgemm.dat' using 12:xtic(1) title 'stability clang' axes x1y1 ,'./gcc-v/01/dgemm.dat' using 12:xtic(1) title 'stability gcc' axes x1y1,'./clang-v/01/dgemm.dat' using 14:xtic(1) title 'speed clang' axes x1y2 ,'./gcc-v/01/dgemm.dat' using 14:xtic(1) title 'speed gcc' axes x1y2

