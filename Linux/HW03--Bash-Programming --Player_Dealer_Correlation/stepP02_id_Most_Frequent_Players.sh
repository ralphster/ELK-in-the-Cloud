#!/bin/bash
#
#  SYNOPSIS            
#    ./stepP02_id_Most_Frequent_Players.sh  LOSS_INFO_FILE
#
#  EXAMPLE                    		# redirect stdout to save the results
#    ./stepP02_id_Most_Frequent_Players.sh Roulette_losses >Player_Appearances_During_Loss 
#
#  NOTES 
#

  cat ${1} \
      | sed -e 's/^.\+[0-9]\s\+//' - | tr ',' '\n'        \
      | sed -e 's/^\s*//' -e 's/\s*$//' -e 's/\s\s*/\s/g' \
      | sort | uniq -D | uniq -c | sort -g -r 


# sed ... 	will delete chars before the name field
# tr ',' '\n'   will replace commas with newline, so one name per line
# sed ...       will remove leading and trailing whitespace then
#		    ensure exactly one space between parts of names
# sort   	will group instances of a dealer's name 
# uniq -D	removes lines that appear only once
# uniq -c	adds the repeat count
# sort -g	does a general numeric sort
# sort -r	reverses the sort, so this will sort high to low
  
