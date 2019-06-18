#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.
###############
# Variables   #
###############
######for in

titles=("Villager" "Natt" "ustad" "nattsaab" "Jatt" "pendu" "mustang" )

#echo "$title=${titles[$title_index]}"
title_index=$(($RANDOM % ${#titles[@]}))

title=${titles[$title_index]}

hostname=$(hostname)
date=$(date +'%I:%M %p')
weekday=$(date +%u)
###############
# Main        #
###############
#cat <<EOF
cowsay "Welcome to planet $hostname, "$title $USER!""
if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
   echo "It is $date on Weekend."
else
   echo "It is $date on Weekday."
fi
