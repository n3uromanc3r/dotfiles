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

function fix-permissions() {
	find . -type d -exec chmod 775 {} \;
	find . -type f -exec chmod 664 {} \;
}

function shamone() {
	echo '  _________.__                                         '
	echo ' /   _____/|  |__ _____    _____   ____   ____   ____  '
	echo ' \_____  \ |  |  \\__  \  /     \ /  _ \ /    \_/ __ \ '
	echo ' /        \|   Y  \/ __ \|  Y Y  (  <_> )   |  \  ___/ '
	echo '/_______  /|___|  (____  /__|_|  /\____/|___|  /\___  >'
	echo '        \/      \/     \/      \/            \/     \/ '
	echo '   _____          _____     ._.'
	echo '  /     \   _____/ ____\____| |'
	echo ' /  \ /  \ /  _ \   __\/  _ \ |'
	echo '/    Y    (  <_> )  | (  <_> )|'
	echo '\____|__  /\____/|__|  \____/__'
	echo '        \/                   \/'
}

function pause() {
	read -p "$*"
}

## Find and replace all instaces of a word in a specific location
function find-and-replace() {
	echo "Please type a folder location to commence search and replace:"
	read DIR
	echo "Word to search for?:"
	read ORIGINAL
	echo "Word to replace with?:"
	read REPLACEMENT
	find "$DIR" -type f -exec sed -i "s/$ORIGINAL/$REPLACEMENT/g" {} \;
}

if [ -f ~/.bash_functions.private ]; then
   . ~/.bash_functions.private
fi