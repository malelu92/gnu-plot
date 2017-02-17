set terminal png size 2000,1400
set output "11f73e79_sourcetype.png"

set linestyle 1 lw 3
set xlabel "Day" font ",20"
set ylabel "Environment" font ",20"
#set yrange [0 : 5]
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%d.%m"
set datafile separator "|"
set title font ",25"

# ---- plot week 1 ----
set title "Environment usage through time"
set xrange ["2010-12-04 00:00:00.0" : "2011-04-30 23:59:59.9"]
plot "11f73e79-SessionsEnvironment.dat" using 2:6:yticlabels(5) with linespoints ls 3 lw 3

set output