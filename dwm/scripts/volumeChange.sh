# volume control bash script
#
# This uses pulseaudio-utils package from repository

inputCommand="$1"

if [ "$inputCommand" == "increase" ];
then
    pactl set-sink-volume @DEFAULT_SINK@ +10%
    volumeLevel=`pactl get-sink-volume @DEFAULT_SINK@ | grep "%" | cut -d '/' -f 2`
    notify-send -u "low" "Volume: $volumeLevel"
elif [ "$inputCommand" == "decrease" ];
then
    pactl set-sink-volume @DEFAULT_SINK@ -10%
    volumeLevel=`pactl get-sink-volume @DEFAULT_SINK@ | grep "%" | cut -d '/' -f 2`
    notify-send -u "low" "Volume: $volumeLevel"
elif [ "$inputCommand" == "toggle" ];
then
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    muteStatus=`pactl get-sink-mute @DEFAULT_SINK@ | cut -d' ' -f 2`
    if [ "$muteStatus" == "yes" ];
    then
        notify-send -u "low" "Volume: muted"
    elif [ "$muteStatus" == "no" ];
    then
        notify-send -u "low" "Volume: unmuted"
    fi
fi

