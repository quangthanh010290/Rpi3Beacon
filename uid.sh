#!/usr/bin/env bash
if uname -m |grep arm ; then
        echo "Detected Arm Board"
	sudo hciconfig hci0 up
	sudo hciconfig hci0 leadv 3
	sudo hcitool -i hci0 cmd 0x08 0x0008 1F 02 01 06 03 03 aa fe 0f 16 aa fe 10 00 02 0 0 0 0 0 0 0 0 00 00 00 00 00 00 00 00 00
else
	echo "Only Valid on Raspbery"
fi
