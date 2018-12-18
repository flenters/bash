#!/bin/bash
now="$(date --date="now" +"%Y-%m-%d")"
file=incomplete_instruments-$now.csv
echo $file
mail -a $file -s "Subject" testing@testing.com <<< "testing 123" < /dev/nul