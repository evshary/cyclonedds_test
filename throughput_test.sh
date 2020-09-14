sizelist="0 20 50 100 200 500 1000 2000 5000 10000 20000 50000 100000 200000 500000 1000000"
second=60

mkdir -p $1
for i in $sizelist
do
    logfile=$1/$1_$i.log
    timeout $second iox-roudi &
    ddsperf -D$second pub size $i &
    ddsperf -D$second sub > $logfile &
    sleep $second
    # Wait for iox-roudi cleanup
    sleep 3
    echo "$i `python3 parse.py $logfile`" >> $1_result.txt
done
