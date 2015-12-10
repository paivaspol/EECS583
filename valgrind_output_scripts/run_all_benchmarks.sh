
FINISHED="450.soplex\|447.dealII\|400.perlbench\|483.xalancbmk\|462.libquantum\|437.leslie3d\|454.calculix\|481.wrf\|.sh"


BENCHMARKS="$(find /home/arquinn/Project1/SPEC/benchspec/CPU2006/ -maxdepth 1 -not -name "*.bset" | awk '{split($1, words,"/"); print words[8]}' | grep -v $FINISHED)"

echo "$BENCHMARKS" | while read bench; do
    echo $bench
    ./specinvoke_script.sh $bench
#    ./parse_outputs.sh $bench

done
