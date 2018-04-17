#!/bin/bash
START=$(date +%s)
./spammy.sh 2000 spammy1foo &
./spammy.sh 2000 spammy1bar &
./spammy.sh 2000 spammy1cho &
./spammy.sh 2000 spammy1wuo &
./spammy.sh 2000 spammy1wbo &
./spammy.sh 2000 spammy1wco &
wait
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds to spam 12000 transactions"    
