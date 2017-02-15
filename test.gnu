set style line 1 lc rgb '#006ad' lt 2 lw 1 pt 7 ps 1
set title "Weekly Usage"
set xlabel "Day"
set ylabel "Time Usage (hrs)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%d.%m"
set datafile separator ","

set xrange ["2011-01-03 00:00:00.0" : "2011-01-03 23:59:59.9"]
plot "miniUserTimes.csv" using 1:3 with linespoints ls 3
