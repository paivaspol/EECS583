#!/bin/bash

BENCHMARK_NAME=$1
VALGRIND="/home/arquinn/valgrind/bin/valgrind"
EXEC_PATH="/home/arquinn/Project1/SPEC/benchspec/CPU2006/$BENCHMARK_NAME/run/run_base_test_ia64-gcc42.0001"
CURR_PATH=`pwd`

cd $EXEC_PATH
pwd
echo $BENCHMARK_NAME

LINES="$(specinvoke -n | grep -v '#' | grep -v 'timer')"

TEMPFILE=/tmp/$$.tmp
echo 0 > $TEMPFILE
    
for i in {1..10}; do   
    echo "$LINES" | while read line; do
	COUNTER=$[$(cat $TEMPFILE) + 1]
	echo $COUNTER > $TEMPFILE
	
	without_redirection="$(cut -d '>' -f 1 <<< "$line" )"
	echo $without_redirection
	$VALGRIND --tool=cachegrind --cachegrind-out-file=cache.out.$COUNTER $without_redirection >who_cares.out 2>>who_cares.err
    done
done
    
unlink $TEMPFILE


/home/arquinn/valgrind/bin/cg_merge -o $BENCHMARK_NAME.merge cache.out.*
rm cache.out.*

mv $BENCHMARK_NAME.merge $CURR_PATH/$BENCHMARK_NAME.merge
cd $CURR_PATH
