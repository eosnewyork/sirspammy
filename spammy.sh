#!/bin/bash
START=$(date +%s)
ARG1=${1:-1000}
ARG2=${2:-foo}
HOST='localhost'
PORT='8888'
x=1
while [ "$x" -lt "$ARG1" ] ; do
    payload='{"from": "user", "to": "tester", "quantity": "0.0001 EOS", "memo": "m'"$ARG2""$x"'"}'
    #echo $payload
    cleos -H $HOST -p $PORT --wallet-host localhost --wallet-port 8000 push action eosio.token transfer "$payload" -p user
    let "x++"
done
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "It took $DIFF seconds to spam $x transactions"   
