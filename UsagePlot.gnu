set terminal png size 2000,900
set output "lala.png"

#set lmargin at screen 0.15
#set rmargin at screen 0.95

#TOP = 0.98
#DY = 0.29

if (!exists("MP_LEFT"))   MP_LEFT = .1
if (!exists("MP_RIGHT"))  MP_RIGHT = .95
if (!exists("MP_BOTTOM")) MP_BOTTOM = .1
if (!exists("MP_TOP"))    MP_TOP = .9
if (!exists("MP_GAP"))    MP_GAP = 0.05

set multiplot layout 2,2 columnsfirst title "Weekly Usage" margins screen MP_LEFT, MP_RIGHT, MP_BOTTOM, MP_TOP spacing screen MP_GAP

#set offset 0,0,graph 0.05, graph 0.05

set style line 1 lc rgb '#006ad' lt 2 lw 1 pt 7 ps 1
set xlabel "Day"
set ylabel "Time Usage (hrs)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%d.%m"
set datafile separator ","

# ---- plot week 4 ----
unset key
#set tmargin at screen TOP-3*DY
#set bmargin at screen TOP-4*DY
set title "Weekly Usage - Week 4"
set xrange ["2011-01-24 00:00:00.0" : "2011-01-30 23:59:59.9"]
plot "56135a80-Jan2011Week4.dat" using 1:3 with linespoints ls 3

# ---- plot week 3 ----
unset key
#set tmargin at screen TOP-2*DY
#set bmargin at screen TOP-3*DY
set title "Weekly Usage - Week 3"
set xrange ["2011-01-17 00:00:00.0" : "2011-01-23 23:59:59.9"]
plot "56135a80-Jan2011Week3.dat" using 1:3 with linespoints ls 3

# ---- plot week 2 ----
unset key
#set tmargin at screen TOP-DY
#set bmargin at screen TOP-2*DY
set title "Weekly Usage - Week 2"
set xrange ["2011-01-10 00:00:00.0" : "2011-01-16 23:59:59.9"]
plot "56135a80-Jan2011Week2.dat" using 1:3 with linespoints ls 3

# ---- plot week 1 ----
unset key
#set tmargin at screen TOP
#set bmargin at screen TOP-DY
set title "Weekly Usage - Week 1"
set xrange ["2011-01-03 00:00:00.0" : "2011-01-09 23:59:59.9"]
plot "56135a80-Jan2011Week1.dat" using 1:3 with linespoints ls 3


unset multiplot; set output