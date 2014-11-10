#!/bin/sh
# Forever while

COUNTER=0

while :
do
	sleep 1
	COUNTER=`expr $COUNTER + 1`
	echo "Program has been running for $COUNTER seconds ..."
done


