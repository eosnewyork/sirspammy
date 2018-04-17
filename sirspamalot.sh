#!/bin/bash
START=$(date +%s)
taskset -c 0 ./spammy.sh 5000 foo > out1.txt &
taskset -c 1 ./spammy.sh 5000 bar > out2.txt &
taskset -c 2 ./spammy.sh 5000 cho > out3.txt &
taskset -c 3 ./spammy.sh 5000 woo > out4.txt &
wait
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds to spam 20000 transactions"  
