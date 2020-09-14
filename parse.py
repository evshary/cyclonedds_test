#!/usr/bin/python3

import sys
import re
import statistics

throughput_list = []

fp = open(sys.argv[1], "r")
try:
    lines = fp.readlines()
    for line in lines:
        match = re.search(r'.* (\d*.\d*) Mb\/s \(', line)
        if match:
            throughput_list.append(float(match.group(1)))
finally:
    fp.close()

print(statistics.median(throughput_list))
