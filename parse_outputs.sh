
BM_NAME=$1
BM_MERGE=$BM_NAME.merge
OUTPUT_FOLDER="valgrind_output_scripts"

/home/arquinn/valgrind/bin/cg_annotate $BM_MERGE --threshold=0 --show=Ir,ILmr | grep /home | sed "s/,//g" | awk '{split($3,words,"/"); split(words[11], funct, ":"); print funct[1], funct[2], $2/$1}' > $OUTPUT_FOLDER/$BM_NAME.instruction.results.unlinked
/home/arquinn/valgrind/bin/cg_annotate $BM_MERGE --threshold=0 --show=Dr,Dw,DLmr,DLmw | grep /home | sed "s/,//g" | awk '{split($5,words,"/"); split(words[11], funct, ":"); if($1 + $2 > 0) print funct[1], funct[2], ($3 + $4)/($1 + $2)}' > $OUTPUT_FOLDER/$BM_NAME.data.results.unlinked

