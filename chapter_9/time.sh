#!/bin/bash
################################################################################
#: Title       : Exercise 1: time.sh
#: Date        : 2018-Jan-5
#: Author      : Anthony Tilelli
#: Version     : 1
#: Description : Return REAL, USER, SYS for time
#: Options     : NONE
################################################################################

REAL=""
USER=""
SYS=""

{ time cat {1..30000} > /dev/null 2>&1 ; } 2> timing

{
 read _ignore_ # gets rid of empty line
 read _ignore_ REAL 
 read _ignore_ USER
 read _ignore_ SYS
} < timing

echo "REAL : $REAL"
echo "USER : $USER"
echo "SYS  : $SYS"

rm timing
exit 0
