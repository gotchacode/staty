#!/bin/bash
#===============================================================================
#
#          FILE:  quote.sh
# 
#         USAGE:  ./quote.sh 
# 
#   DESCRIPTION:  This script sellects random facts and quotes from history and tweets then regularly
# 
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  |Vinit Kumar| (), |vinitcool76@gmail.com|
#       COMPANY:  
#       VERSION:  1.0
#       CREATED:  Wednesday 27 June 2012 10:16:02  IST IST
#      REVISION:  ---
#===============================================================================

calendar>quotes.txt
while read line
do 
	a=`echo $line | egrep -ic 'born|day|invented|discovered|birth'`
	if [ $a -ne 0 ];then 
		echo $line
	fi 
	
done<quotes.txt


