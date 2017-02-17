set terminal png size 2000,1400
set output "5749374a-march2012usage.png"

if (!exists("MP_LEFT"))   MP_LEFT = .1
if (!exists("MP_RIGHT"))  MP_RIGHT = .95
if (!exists("MP_BOTTOM")) MP_BOTTOM = .1
if (!exists("MP_TOP"))    MP_TOP = .9
if (!exists("MP_GAP"))    MP_GAP = .13

set multiplot layout 2,2 columnsfirst title "March 2012 Weekly Usage" font ",25" margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing screen MP_GAP

#set style line 1 lc rgb '#006ad' lt 2 lw 1 pt 7 ps 5
set linestyle 1 lw 3
set xlabel "Day" font ",20"
set ylabel "Time Usage (hrs)" font ",20"
set yrange [0 : 24]
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%d.%m"
set datafile separator ","
set title font ",25"

# ---- plot week 1 ----
set title "Week 1"
set xrange ["2012-03-05 00:00:00.0" : "2012-03-11 23:59:59.9"]
plot "5749374a-Mar2012Week1.dat" using 1:3 with linespoints ls 3 lw 3

# ---- plot week 3 ----
set title "Week 3"
set xrange ["2012-03-19 00:00:00.0" : "2012-03-25 23:59:59.9"]
plot "5749374a-Mar2012Week3.dat" using 1:3 with linespoints ls 3 lw 3

# ---- plot week 2 ----
set title "Week 2"
set xrange ["2012-03-12 00:00:00.0" : "2012-03-18 23:59:59.9"]
plot "5749374a-Mar2012Week2.dat" using 1:3 with linespoints ls 3 lw 3

# ---- plot week 4 ----
set title "Week 4"
set xrange ["2012-03-26 00:00:00.0" : "2012-04-01 23:59:59.9"]
plot "5749374a-Mar2012Week4.dat" using 1:3 with linespoints ls 3 lw 3

unset multiplot; set output