#!/bin/bash
#
#  SYNOPSIS
#    ./stepP02_mk_Report.sh  LOSS_INFO_FILE
#
#  EXAMPLE                    		# redirect stdout to save the results
#    ./stepP02_mk_Report.sh Roulette_Losses > Notes_Player_Analysis
#
#  NOTES
#    Will only report the names of dealers that were present 
#        for more than one major loss
#

  echo -e "#\n# Date, Time, and Amount Lost\n#"
  sed  's/\(,[0-9]\+\)\s.*$/\1/' ${1}
     # sed ...	will delete chars after the rightmost numbers, keeping the numbers

  echo -e "#\n# Number of major losses\t`cat ${1} | wc -l`\n#"

  echo -e "#\n# Players with more than one appearance during a major loss,"
  echo -e "#    and number of times they were present\n#"

  cat ${1} \
      | sed -e 's/^.\+[0-9]\s\+//' - | tr ',' '\n'        \
      | sed -e 's/^\s*//' -e 's/\s*$//' -e 's/\s\s*/\s/g' \
      | sort | uniq -D | uniq -c | sort -g -r  |head -3

#   
# sed ... 	will delete chars before the name field
# tr ',' '\n'   will replace commas with newline, so one name per line
# sed ...       will remove leading and trailing whitespace then
#		    ensure exactly one space between parts of names
# sort   	will group instances of a dealer's name 
# uniq -D	removes lines that appear only once  <<< emphasis on that
# uniq -c	adds the repeat count
# sort -g	does a general numeric sort
# sort -r	reverses the sort, so this will sort high to low
# head -3	Just how the highest appearance counts
  
