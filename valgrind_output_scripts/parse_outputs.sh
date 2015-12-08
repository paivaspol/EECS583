
BM_NAME=$1
BM_MERGE=$BM_NAME.merge

/home/arquinn/valgrind/bin/cg_annotate $BM_MERGE --threshold=0 --show=Ir,I1mr | grep /home | sed "s/,//g" | awk '{n=split($3,words,"/"); split(words[n], funct, ":"); print funct[1], funct[2], ($2/$1 * 100)}' > $BM_NAME.instruction.results.unlinked
/home/arquinn/valgrind/bin/cg_annotate $BM_MERGE --threshold=0 --show=Dr,Dw,D1mr,D1mw | grep /home | sed "s/,//g" | awk '{n=split($5,words,"/"); split(words[n], funct, ":"); if($1 + $2 > 0) print funct[1], funct[2], (($3 + $4)/($1 + $2)*100)}' > $BM_NAME.data.results.unlinked

