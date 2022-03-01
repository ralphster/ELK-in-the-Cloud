#!/bin/bash
#
#  SYNOPSIS
#    ./roulette_dealer_finder_by_time_and_game.sh GAME 4-DIGIT-DATECODE HH:MM:SS AM|PM 
#
#  EXAMPLE
#    ./roulette_dealer_finder_by_time_and_game.sh -b 0310 12:00:00 PM 
#
#  Notes: 
#   Expects TIME and AM|PM to arrive as independent parameters.
#
#   Currently set to search Dealer schedules in the project directory.
#      To search "ALL dealer schedules", uncomment that line below
#
#   After doing a lot of PERL, BASH operator =~ is good to have.
#

DealerInfoDir="/home/sysadmin/HW3/Lucky_Duck_Investigations/" # project scheds part 1
DealerInfoDir+="Roulette_Loss_Investigation/Dealer_Analysis"  # project scheds part 2
#DealerInfoDir="/home/sysadmin/HW3/Dealer_Schedules_0310"     # ALL dealer schedules
DealerFileSuffix="_Dealer_schedule"

TIME=''
DATE=''
AMPM=''
GAME=''
ERR='false'

BlackCol="2"			# column positions in schedule file
RouleCol="3"
texasCol="4"

FourDigits='^[0-9]{4}$'		# Regex patterns for parsing arguments
Hour1Digit='^[1-9]$'
Hour2Digits='^(0[1-9]|10|11|12)$'
Hour8Digits='^(0[1-9]|10|11|12):00:00$'  # all schedules are aligned to the hour
AMletters='^[Aa][Mm]$'
PMletters='^[Pp][Mm]$'
HelpRequest='^(\?|-\?|-h|-help|--help|help|-u|-usage|--usage)$'
BlackJack='^(-b|--blackjack|blackjack|black|-black|--black|B|-B)$'
Roulette='^(-r|--roulette|roulette|roule|-roule|--roule|R|-R)$'
texasHoldEm='^(-t|--texasholdem|texasholdem|texas|-texas|--texas|T|-T)$'  
    # I am from Oklahoma so using localized (lack of) capitalization :-)

ProgName="`basename ${0}`"	# $0 probably not available after shift
function PrntErr {
   echo "${ProgName}: ${1}" >&2
   ERR='true'
}
function PrntUsage {
   echo "   Usage: ${ProgName}  [GAME]  4-DIGIT-DATECODE  HH:MM:SS  AM|PM" >&2
}
function PrntExample {
   echo "Examples: ${ProgName} --blackjack 0310 12:00:00 PM" >&2
   echo "        : ${ProgName} texas 0311 10 AM" >&2
   echo "        : ${ProgName} -r 0315 1 pm" >&2
}

# parse the argument list, unless this is a pure help request
while [[ -n "${1}" ]]; do
   if   [[ "$1" =~ ${FourDigits}  ]] ; then DATE="${1}"
   elif [[ "$1" =~ ${Hour1Digit}  ]] ; then TIME="0${1}:00:00"
   elif [[ "$1" =~ ${Hour2Digits} ]] ; then TIME="${1}:00:00"
   elif [[ "$1" =~ ${Hour8Digits} ]] ; then TIME="${1}"
   elif [[ "$1" =~ ${AMletters}   ]] ; then AMPM="AM"
   elif [[ "$1" =~ ${PMletters}   ]] ; then AMPM="PM"
   elif [[ "$1" =~ ${BlackJack}   ]] ; then GAME="${BlackCol}"
   elif [[ "$1" =~ ${Roulette}    ]] ; then GAME="${RouleCol}"
   elif [[ "$1" =~ ${texasHoldEm} ]] ; then GAME="${texasCol}"
   elif [[ "$1" =~ ${HelpRequest} ]] ; then PrntUsage; PrntExample; exit 1
   else		# unknown argument
	PrntErr "arg '${1}' not recognized"
	PrntUsage; PrntExample; exit 1
   fi
   shift
done

# verify all necessary parameters are provided
if [[ -z "${DATE}" ]] ; then PrntErr "need to specify 4-digit-DATECODE"; fi
if [[ -z "${TIME}" ]] ; then PrntErr "need to specify TIME "; fi
if [[ -z "${AMPM}" ]] ; then PrntErr "need to specify AM or PM "; fi
if [[ -z "${GAME}" ]] ; then PrntErr "need to specify GAME "; fi
if [[ "${ERR}" = 'true' ]] ; then PrntExample; exit 1; fi

Schedule="${DealerInfoDir}/${DATE}${DealerFileSuffix}"

if [[ ! -f ${Schedule}  ]] ; then    # schedule file not found
    PrntErr "dealer schedule file not found for ${DATE}"; exit 1; fi

grep "${TIME} ${AMPM}" "${Schedule}" | awk -F '\t' "{print \$${GAME}}"

