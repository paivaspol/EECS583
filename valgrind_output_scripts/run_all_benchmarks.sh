
FINISHED="400.perlbench\|401.bzip2\|410.bwaves\|437.leslie3d\|445.gobmk\|450.soplex\|454.calculix\|462.libquantum\|470.lbm\|481.wrf\|483.xalancbmk\|447.dealII"

BENCHMARKS="$(find /home/arquinn/Project1/SPEC/benchspec/CPU2006/ -maxdepth 1 -not -name "*.bset" | awk '{split($1, words,"/"); print words[8]}' | grep -v $FINISHED)"

echo "$BENCHMARKS" | while read bench; do
    echo $bench
    ./specinvoke_script.sh $bench
#    ./parse_outputs.sh $bench

done
