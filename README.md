# Introduction

This repo contains some benchmark scripts which I'm not sure where to put is suitable.

# Usage

1. Setup Cyclone DDS and iceoryx environment and configuration.
2. Run test script:

```
# Native Cyclone DDS
./throughput_test.sh native
# Shared memory
./throughput_test.sh shm
```

3. Draw the plot

```
sudo apt install gnuplot
gnuplot "plot.plt"
```
