set title "reduc clang/gcc 02 optimization"
set style data histograms
set xlabel "title"
set ylabel "stddev(%)"
set y2label "speed"
set output "reduc_02_clang_gcc_comp.png"
set terminal png size 1000,600
set style fill solid border -1


plot './clang_v/2/reduc.dat' using 13:xtic(1) title 'stability clang' axes x1y1 ,'./gcc_v/2/reduc.dat' using 13:xtic(1) title 'stability gcc' axes x1y1,'./clang_v/2/reduc.dat' using 15:xtic(1) title 'speed clang' axes x1y2 ,'./gcc_v/2/reduc.dat' using 15:xtic(1) title 'speed gcc' axes x1y2

