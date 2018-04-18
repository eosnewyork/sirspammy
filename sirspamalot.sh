#!/bin/bash
START=$(date +%s)
ARG1=${1:-spammy}
./spammy.sh 2000 ${ARG1}foo &
./spammy.sh 2000 ${ARG1}bar &
./spammy.sh 2000 ${ARG1}cho &
./spammy.sh 2000 ${ARG1}woo &
./spammy.sh 2000 ${ARG1}boo &
./spammy.sh 2000 ${ARG1}coo &
wait
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds to spam 12000 transactions"
