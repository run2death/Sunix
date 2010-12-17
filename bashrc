# SunBash
if [ -f "$HOME/.Sunix/SunBash" ]; then
. "$HOME/.Sunix/SunBash"
fi

# SunBash negative
sunix(){
	if [ -f "$HOME/.Sunix/SunBash" ]; then
	. "$HOME/.Sunix/SunBash"
	fi
	echo start success!
}
