set title "Throughput"
set xlabel "payload size [bytes]"
set ylabel "[Mbps]"
set logscale x
set key box
set style data lines
set terminal png
set output "shm_performance.png"
plot "native_result.txt" title "cyclonedds", "shm_result.txt" title "cyclonedds+iceoryx"
set terminal x11
