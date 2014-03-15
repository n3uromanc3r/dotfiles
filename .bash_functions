function time-of-day() {
	h=`date +%H`

	if [ $h -lt 12 ]; then
		TIMEOFDAY="morning"
	elif [ $h -lt 18 ]; then
		TIMEOFDAY="afternoon"
	else
		TIMEOFDAY="evening"
	fi
}

function welcome() {
	time-of-day
	MSG="Good $TIMEOFDAY ${USER^}, welcome back!"
	for (( i=0; i<=${#MSG}; i++ )); do
		echo -n -e "\r\033[K${MSG:0:$i}"
		sleep "0.04"
	done
	echo ""
}

if [ -f ~/.bash_functions.private ]; then
   . ~/.bash_functions.private
fi