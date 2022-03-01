#!/bin/bash
#
#  SYNOPSIS
#    ./roulette_dealer_finder_by_time.sh 4-DIGIT-DATECODE HH:MM:SS AM|PM
#
#  EXAMPLE
#    ./roulette_dealer_finder_by_time.sh 0310 12:00:00 PM 
#
#  Notes: 
#   Will accept "HH:MM:SS AM|PM" if in $2, or separated like this: $2 $3
#

DealerInfoDir="/home/sysadmin/HW3/Dealer_Schedules_0310" #Dir of all dealer scheds

# Validate arg 1. Must be 4 digits

   regexp='^[0-9]{4}$'
   if [[ "$1" =~ $regexp ]] ; then
	DATE=${1};
   else
	echo "`basename "$0"`: DATECODE must be exactly 4 digits" >&2; exit 1
   fi

# Validate arg 2 or arg 2+arg 3 together. 
# As long as we get 2digits:2digits:2digits\sAM|PM

   regexp='^[0-1][0-9]:[0-5][0-9]:[0-5][0-9] [AP]M$'
   if [[ "$2 $3" =~ $regexp ]] ; then
	TIME="${2} ${3}";
   elif [[ "$2" =~ $regexp ]] ; then
	TIME="$2";
   else
	echo "`basename "$0"`: TIME must be HH:MM:SS AM|PM" >&2; exit 1
   fi

   grep "${TIME}" ${DealerInfoDir}/${DATE}_Dealer_schedule | awk -F '\t' '{print $3}'

