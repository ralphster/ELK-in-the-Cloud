#!/bin/bash
#
#  SYNOPSIS
#    ./stepD01_id_roulette_dealer_on_duty.sh  ROULETTE_LOSS_FILE
#
#  EXAMPLE         			# redirect stdout to save the results
#    ./stepD01_id_roulette_dealer_on_duty.sh  ../Player_Analysis/Roulette_Losses \
#					> Dealers_working_during_losses
#
#  NOTES
#

  while read line ; do

     loss_date=`echo $line | awk '{print $1}'`

     loss_time=`echo $line | awk '{print $2,$3}'`

     loss_dealer=`cat ${loss_date}_Dealer_schedule | grep "$loss_time" \
	  | awk -F '\t' '{print $3}'   				\
          | sed -e 's/^\s*//' -e 's/\s*$//' -e 's/\s\+/ /g' `
	# awk ... 	will select the roulette dealer, there is only one
	# sed ...       will remove leading and trailing whitespace then
	#		    ensure exactly one space between parts of names

     echo -e "${loss_date} ${loss_time}\t${loss_dealer}"

  done  < ${1}

  #  this was helpful during testing of whitespace normalization
  #   | sed -e 's/^/  /' -e 's/$/  /' -e 's/ /   /g'  	\

