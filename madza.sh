#!/bin/bash


#dirlist=$(ls *.gz) # (`ls ${prefix}*.text`)

# points until

dirlist=$(ls *.gz| grep -o ^.......| sort | uniq)
#echo $dirlist
 prefix=0
 for f in $dirlist; do
     prefix=$(($prefix+1))
    for g in $(find $f*);
    do
	cp $g new/${g/$f/$prefix}
	done
 
    done
