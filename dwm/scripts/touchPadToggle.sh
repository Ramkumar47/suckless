# setting device id
deviceId=12

# getting current state of touchpad
state=`xinput --list-props 12 | grep "Device Enabled" | cut -d ':' -f 2 |  cut -d' ' -f 1 `

if [ $state -eq 0 ]
then
    xinput set-prop $deviceId "Device Enabled" 1
    notify-send -u "low" "Touchpad enabled"
elif [ $state -eq 1 ]
then
    xinput set-prop $deviceId "Device Enabled" 0
    notify-send -u "low" "Touchpad disabled"
fi

