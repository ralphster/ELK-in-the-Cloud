#!/bin/bash
#
#  SYNOPSIS                  
#    ./stepP01_id_Roulette_Loss_Events.sh  4-DIGIT_DATECODE...
#
#  EXAMPLE 			# redirect stdout to save the results
#    ./stepP01_id_Roulette_Loss_Events.sh  0310 0312 0315  > Roulettte_Losses
#
#  NOTES 
#

for datecode in $*        # for each datecode
 do                       # grep for  losses and prepend the date
    grep "\s-\$[1-9]" *${datecode}* | sed  "s/^/${datecode} /" 
 done

