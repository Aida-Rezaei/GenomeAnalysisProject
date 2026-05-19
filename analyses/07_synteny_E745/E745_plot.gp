set terminal png tiny size 800,800
set output "E745_plot.png"
set ytics ( \
 "tig00000001" 1.0, \
 "tig00000006" 2762476.0, \
 "tig00000002" 2777488.0, \
 "tig00000010" 2976869.0, \
 "tig00000009" 2980930.0, \
 "tig00000004" 3005877.0, \
 "tig00000012" 3020595.0, \
 "tig00000007" 3024819.0, \
 "tig00000003" 3040862.0, \
 "tig00000005" 3063633.0, \
 "tig00000008" 3103645.0, \
 "" 3119082 \
)
set size 1,1
set grid
unset key
set border 10
set tics scale 0
set xlabel "CP014529.1"
set ylabel "QRY"
set format "%.0f"
set mouse format "%.0f"
set mouse mouseformat "[%.0f, %.0f]"
set xrange [1:2765010]
set yrange [1:3119082]
set style line 1  lt 1 lw 3 pt 6 ps 1
set style line 2  lt 3 lw 3 pt 6 ps 1
set style line 3  lt 2 lw 3 pt 6 ps 1
plot \
 "E745_plot.fplot" title "FWD" w lp ls 1, \
 "E745_plot.rplot" title "REV" w lp ls 2
