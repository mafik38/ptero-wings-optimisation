#!/bin/bash

# Optimization settings
echo "Applying optimizations..."

# Set swappiness to 10
echo 10 > /proc/sys/vm/swappiness

# Set dirty ratio to 5%
echo 5 > /proc/sys/vm/dirty_ratio

# Set dirty background ratio to 10%
echo 10 > /proc/sys/vm/dirty_background_ratio

# Set vfs_cache_pressure to 50
echo 50 > /proc/sys/vm/vfs_cache_pressure

# Set overcommit_memory to 2
echo 2 > /proc/sys/vm/overcommit_memory

# Set zone_reclaim_mode to 0
echo 0 > /proc/sys/vm/zone_reclaim_mode

# Set min_free_kbytes to 51200
echo 51200 > /proc/sys/vm/min_free_kbytes

# Set TCP low latency
echo 1 > /proc/sys/net/ipv4/tcp_low_latency

echo "Optimization complete. Thanks for using the script!"
