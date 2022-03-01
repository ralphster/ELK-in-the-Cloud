#!/bin/bash

#  SYNOPSIS
#    ./roulette_dealer_finder_by_time_and_game.sh GAME 4-DIGIT-DATECODE HH:MM:SS AM|PM 
#  EXAMPLE
#    ./roulette_dealer_finder_by_time_and_game.sh -b 0310 12:00:00 PM 


PROJDIR="/home/sysadmin/HW3/Lucky_Duck_Investigations"
STEPDIR="/Roulette_Loss_Investigation/Dealer_Analysis"
cd ${PROJDIR}${STEPDIR}

(
echo "# 
#
# I tested error handling and usage requests by hand.
# I won't reproduce them here.
#
# We can expect the test results to match this list of names
# the dealer schedules for those 3 days are identical 
# We will run the program 24 times, one for each hour, using different days
#
#   First BLACKJACK
#
12:00:00 AM	Izabela Parrish	
01:00:00 AM	Billy Jones	
02:00:00 AM	Summer-Louise Hammond	
03:00:00 AM	John-James Hayward
04:00:00 AM	Chyna Mercado	
05:00:00 AM	Katey Bean	
06:00:00 AM	Evalyn Howell	
07:00:00 AM	Cleveland Hanna	
08:00:00 AM	Rahima Figueroa	
09:00:00 AM	Marlene Mcpherson	
10:00:00 AM	Izabela Parrish	
11:00:00 AM	Madina Britton	
12:00:00 PM	Summer-Louise Hammond	
01:00:00 PM	John-James Hayward
02:00:00 PM	Chyna Mercado	
03:00:00 PM	Katey Bean	
04:00:00 PM	Evalyn Howell	
05:00:00 PM	Billy Jones	
06:00:00 PM	Rahima Figueroa	
07:00:00 PM	Marlene Mcpherson	
08:00:00 PM	Saima Mcdermott	
09:00:00 PM	Abigale Rich	
10:00:00 PM	Evalyn Howell	
11:00:00 PM	Cleveland Hanna	

Now output from the program:"

./roulette_dealer_finder_by_time_and_game.sh -b 0310  12 AM
./roulette_dealer_finder_by_time_and_game.sh black 0312  1 AM
./roulette_dealer_finder_by_time_and_game.sh blackjack 0315  02:00:00 am
./roulette_dealer_finder_by_time_and_game.sh --blackjack 0310  03:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -black 0312  04:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --black 0315  05:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh B 0310  06:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -B 0312  07:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -b 0315  08:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh black 0310  09:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh blackjack 0312  10:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --blackjack 0315  11:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -black 0310  12:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh B 0312  01:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -B 0315  02:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -b 0310  03:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh black 0312  04:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh --black 0315  05:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh black 0310  06:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -black 0312  07:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh --blackjack 0315  08:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh B 0310  09:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -B 0312  10:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh black 0315  11:00:00 PM
echo "# 
#
#  now ROULETTE
#
# this Roulette dealer column should be reproduced
#
12:00:00 AM	Marlene Mcpherson
01:00:00 AM	Saima Mcdermott
02:00:00 AM	Abigale Rich
03:00:00 AM	Evalyn Howell
04:00:00 AM	Cleveland Hanna
05:00:00 AM	Billy Jones
06:00:00 AM	Saima Mcdermott
07:00:00 AM	Abigale Rich
08:00:00 AM	Billy Jones
09:00:00 AM	Cleveland Hanna
10:00:00 AM	Madina Britton
11:00:00 AM	Summer-Louise Hammond
12:00:00 PM	John-James Hayward
01:00:00 PM	Chyna Mercado
02:00:00 PM	Billy Jones
03:00:00 PM	Evalyn Howell
04:00:00 PM	Cleveland Hanna
05:00:00 PM	Rahima Figueroa
06:00:00 PM	John-James Hayward
07:00:00 PM	Chyna Mercado
08:00:00 PM	Billy Jones
09:00:00 PM	Evalyn Howell
10:00:00 PM	Katey Bean
11:00:00 PM	Billy Jones 

Now output from the program:"
./roulette_dealer_finder_by_time_and_game.sh -r 0310  12:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh roule 0312  01:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh roulette 0315  02:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --roulette 0310  03:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -roule 0312  04:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --roule 0315  05:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh R 0310  06:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -R 0312  07:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -r 0315  08:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh roule 0310  09:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh roulette 0312  10:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --roulette 0315  11:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -roule 0310  12:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh R 0312  01:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -R 0315  02:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -r 0310  03:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh roule 0312  04:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh --roule 0315  05:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh roule 0310  06:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -roule 0312  07:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh --roulette 0315  08:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh R 0310  09:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -R 0312  10:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh roule 0315  11:00:00 PM

echo "# 
#
#
# now texas holdem
#
# this texas holdem dealer column should be reproduced
#
12:00:00 AM	Madina Britton
01:00:00 AM	Summer-Louise Hammond
02:00:00 AM	John-James Hayward
03:00:00 AM	Chyna Mercado
04:00:00 AM	Katey Bean
05:00:00 AM	Evalyn Howell
06:00:00 AM	Cleveland Hanna
07:00:00 AM	Billy Jones
08:00:00 AM	Madina Britton
09:00:00 AM	Summer-Louise Hammond
10:00:00 AM	John-James Hayward
11:00:00 AM	Chyna Mercado
12:00:00 PM	Katey Bean
01:00:00 PM	Evalyn Howell
02:00:00 PM	Cleveland Hanna
03:00:00 PM	Rahima Figueroa
04:00:00 PM	Billy Jones
05:00:00 PM	Summer-Louise Hammond
06:00:00 PM	John-James Hayward
07:00:00 PM	Chyna Mercado
08:00:00 PM	Katey Bean
09:00:00 PM	Billy Jones
10:00:00 PM	Cleveland Hanna
11:00:00 PM	Rahima Figueroa
"
./roulette_dealer_finder_by_time_and_game.sh -t 0310  12:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh texas 0312  01:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh texasholdem 0315  02:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --texasholdem 0310  03:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -texas 0312  04:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --texas 0315  05:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh T 0310  06:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -T 0312  07:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -t 0315  08:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh texas 0310  09:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh texasholdem 0312  10:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh --texasholdem 0315  11:00:00 AM
./roulette_dealer_finder_by_time_and_game.sh -texas 0310  12:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh T 0312  01:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -T 0315  02:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -t 0310  03:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh texas 0312  04:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh --texas 0315  05:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh texas 0310  06:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -texas 0312  07:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh --texasholdem 0315  08:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh T 0310  09:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh -T 0312  10:00:00 PM
./roulette_dealer_finder_by_time_and_game.sh texas 0315  11:00:00 PM
    ) > ./roulette_dealer_finder_by_time_and_game.test.sh.OUT
