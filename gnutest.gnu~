#set style line 1 lc rgb '#006ad' lt 1 lw 2 pt 7 ps 1.5
#plot 'userTimes.dat' with linespoints ls 1

set style line 1 lc rgb '#006ad' lt 2 lw 1 pt 7 ps 1
set title "Weekly Usage"
set xlabel "Day and Hour"
set ylabel "Time Usage"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set xrange ["2011-01-03 00:00:00.0" : "2011-01-09 23:59:59.9"]
set format x "%d.%m"
plot "userTimes.dat" using 1:3 with linespoints ls 3