set terminal png size 2000,1400
set output "11f73e79_sourcetype.png"

if (!exists("MP_LEFT"))   MP_LEFT = .1
if (!exists("MP_RIGHT"))  MP_RIGHT = .95
if (!exists("MP_BOTTOM")) MP_BOTTOM = .1
if (!exists("MP_TOP"))    MP_TOP = .9
if (!exists("MP_GAP"))    MP_GAP = .13

set multiplot layout 2,2 columnsfirst title "February 2011 Weekly Usage" font ",25\" margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing screen MP_GAP

set linestyle 1 lw 3
set xlabel "Day" font ",20"
set ylabel "Environment" font ",20"
set yrange [1:3]
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%d.%m"
set datafile separator "|"
set title font ",25"

# ---- plot week 1 ----
set title "Week 1"
set xrange ["2011-01-31 00:00:00.0" : "2011-02-06 23:59:59.9"]
plot "11f73e79-Feb2011Week1.dat" using 2:6:yticlabels(5) with linespoints ls 3 lw 3

# ---- plot week 3 ----
set title "Week 3"
set xrange ["2011-02-14 00:00:00.0" : "2011-02-20 23:59:59.9"]
plot "11f73e79-Feb2011Week3.dat" using 2:6:yticlabels(5) with linespoints ls 3 lw 3

# ---- plot week 2 ----
set title "Week 2"
set xrange ["2011-02-07 00:00:00.0" : "2011-02-13 23:59:59.9"]
plot "11f73e79-Feb2011Week2.dat" using 2:6:yticlabels(5) with linespoints ls 3 lw 3

# ---- plot week 4 ----
set title "Week 4"
set xrange ["2011-02-21 00:00:00.0" : "2011-02-27 23:59:59.9"]
plot "11f73e79-Feb2011Week4.dat" using 2:6:yticlabels(5) with linespoints ls 3 lw 3

unset multiplot
unset output