#!/bin/bash
#
#  SYNOPSIS
#    ./stepP03_mk_Report.sh  LOSS_INFO_FILE  PLAYER_APPEARANCE_FILE
#
#  EXAMPLE                    		# redirect stdout to save the results
#    ./stepP03_mk_Report.sh Roulette_losses Player_Appearances_During_Loss > Notes_Player_Analysis
#
#  NOTES
#

  echo -e "#\n# Date, Time, and Amount Lost\n#"
  sed  's/\(,[0-9]\+\)\s.*$/\1/' ${1}

  echo -e "#\n# Number of major losses\t`cat ${1} | wc -l`\n#"

  echo -e "#\n# Players with more than one appearance during a major loss,"
  echo -e "#    and number of times they were present\n#"
  head -3 ${2}

  # sed ...	will delete chars after the rightmost numbers, keeping the numbers
