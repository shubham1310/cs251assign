sec=50
min=03
hour=15
while [ 1 ]
do
    clear
	hour=$((($hour + $min/59)%24))
	min=$((($min + $sec/59)%60))
	sec=$((($sec+1)%60))
	banner "$hour:$min:$sec"
    sleep 1
done
