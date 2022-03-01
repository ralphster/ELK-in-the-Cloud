#!/bin/bash

# SYNOPSIS
#    ./roulette_dealer_finder_by_time.sh 4-DIGIT-DATECODE HH:MM:SS AM|PM
# EXAMPLE
#    ./roulette_dealer_finder_by_time.sh 0310 12:00:00 PM 
# 


PROJDIR="/home/sysadmin/HW3/Lucky_Duck_Investigations"
STEPDIR="/Roulette_Loss_Investigation/Dealer_Analysis"
cd ${PROJDIR}${STEPDIR}

(
echo "# 
# We can expect the test results to match this list of names
# the dealer schedules for those 3 days are identical 
# We will run the program 24 times, one for each hour, using different days
# so this Roulette dealer column should be reproduced
#
# 12:00:00 AM	Marlene Mcpherson
# 01:00:00 AM	Saima Mcdermott
# 02:00:00 AM	Abigale Rich
# 03:00:00 AM	Evalyn Howell
# 04:00:00 AM	Cleveland Hanna
# 05:00:00 AM	Billy Jones
# 06:00:00 AM	Saima Mcdermott
# 07:00:00 AM	Abigale Rich
# 08:00:00 AM	Billy Jones
# 09:00:00 AM	Cleveland Hanna
# 10:00:00 AM	Madina Britton
# 11:00:00 AM	Summer-Louise Hammond
# 12:00:00 PM	John-James Hayward
# 01:00:00 PM	Chyna Mercado
# 02:00:00 PM	Billy Jones
# 03:00:00 PM	Evalyn Howell
# 04:00:00 PM	Cleveland Hanna
# 05:00:00 PM	Rahima Figueroa
# 06:00:00 PM	John-James Hayward
# 07:00:00 PM	Chyna Mercado
# 08:00:00 PM	Billy Jones
# 09:00:00 PM	Evalyn Howell
# 10:00:00 PM	Katey Bean
# 11:00:00 PM	Billy Jones "
echo " ";
./roulette_dealer_finder_by_time.sh 0310  12:00:00 AM
./roulette_dealer_finder_by_time.sh 0312  01:00:00 AM
./roulette_dealer_finder_by_time.sh 0315  02:00:00 AM
./roulette_dealer_finder_by_time.sh 0310  03:00:00 AM
./roulette_dealer_finder_by_time.sh 0312  04:00:00 AM
./roulette_dealer_finder_by_time.sh 0315  05:00:00 AM
./roulette_dealer_finder_by_time.sh 0310  06:00:00 AM
./roulette_dealer_finder_by_time.sh 0312  07:00:00 AM
./roulette_dealer_finder_by_time.sh 0315  08:00:00 AM
./roulette_dealer_finder_by_time.sh 0310  09:00:00 AM
./roulette_dealer_finder_by_time.sh 0312  10:00:00 AM
./roulette_dealer_finder_by_time.sh 0315  11:00:00 AM
./roulette_dealer_finder_by_time.sh 0310  12:00:00 PM
./roulette_dealer_finder_by_time.sh 0312  01:00:00 PM
./roulette_dealer_finder_by_time.sh 0315  02:00:00 PM
./roulette_dealer_finder_by_time.sh 0310  03:00:00 PM
./roulette_dealer_finder_by_time.sh 0312  04:00:00 PM
./roulette_dealer_finder_by_time.sh 0315  05:00:00 PM
./roulette_dealer_finder_by_time.sh 0310  06:00:00 PM
./roulette_dealer_finder_by_time.sh 0312  07:00:00 PM
./roulette_dealer_finder_by_time.sh 0315  08:00:00 PM
./roulette_dealer_finder_by_time.sh 0310  09:00:00 PM
./roulette_dealer_finder_by_time.sh 0312  10:00:00 PM
./roulette_dealer_finder_by_time.sh 0315  11:00:00 PM
    ) > ./roulette_dealer_finder_by_time.test.sh.OUT
