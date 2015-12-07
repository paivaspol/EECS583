MERGEFILES="$(ls *.merge)"


echo "$MERGEFILES" | while read merge; do
    
    split="$(echo $merge | awk '{split($1,words,"."); printf "%s.%s",words[1],words[2];}')"    
    echo $split
    ./parse_outputs.sh $split
done
