#!/bin/bash
#
#  SYNOPSIS
#    ./stepD02_mk_Report.sh  DEALER_APPEARANCE_FILE
#
#  EXAMPLE 		        		# redirect stdout to save the results
#    ./stepD02_mk_Report.sh  Dealers_working_during_losses  > Notes_Dealer_Analysis
#
#  NOTES
#
  
  echo -e "#\n# Date, Time, and Dealer on Duty\n#"
  cat ${1}

  echo -e "#\n# Number of major losses\t` cat ${1} |wc -l`\n#"

  echo -e "#\n# Dealers with more than one appearance during a major loss,"
  echo -e "#    and number of times they were present\n#"

  awk -F '\t' '{print $2}' < ${1} | sort | uniq -D | uniq -c |sort -g -r

# awk ... 	will delete chars before the name field
# sort   	will group instances of a dealer's name 
# uniq -D	removes lines that appear only once
# uniq -c	adds the repeat count
# sort -g	does a general numeric sort
# sort -r	reverses the sort, so this will sort high to low
  
