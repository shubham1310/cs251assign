while [ 1 ]
do
	clear
	i="$(date +%T)"
	banner $i
	sleep 1
done
# In case the clock is to be made from scratch use this code
# sec=50
# min=58
# hour=15
# while [ 1 ]
# do
#     clear
# 	if [ "$min" -eq 59 ] && [ "$sec" -eq 59 ] ; then
# 		hour=$((($hour + 1)%24))
# 	fi
# 	min=$((($min + $sec/59)%60))
# 	sec=$((($sec+1)%60))
# 	banner "$hour:$min:$sec"
#     sleep 0.1
# done
