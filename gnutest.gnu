#set style line 1 lc rgb '#006ad' lt 1 lw 2 pt 7 ps 1.5
#plot 'userTimes.dat' with linespoints ls 1

set terminal png size 600,900
set output "lala.png"

set lmargin at screen 0.15
set rmargin at screen 0.95

TOP = 0.98
DY = 0.29

set multiplot
set offset 0,0,graph 0.05, graph 0.05

set tmargin at screen TOP-2*DY
set bmargin at screen TOP-3*DY
set style line 1 lc rgb '#006ad' lt 2 lw 1 pt 7 ps 1
set title "Weekly Usage"
set xlabel "Day"
set ylabel "Time Usage (hrs)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set xrange ["2011-01-01 00:00:00.0" : "2011-01-31 23:59:59.9"]
set format x "%d.%m"
plot "56135a80-January2011UsageTimes.dat" using 1:3 with linespoints ls 3


set tmargin at screen TOP
set bmargin at screen TOP-DY
unset xlabel
set style line 1 lc rgb '#006ad' lt 2 lw 1 pt 7 ps 1
plot sin(x)

unset multiplot; set output