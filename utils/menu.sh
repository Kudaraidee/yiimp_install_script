#!/usr/bin/env bash
#####################################################
# Updated by afiniel for crypto use...
#####################################################

FUNC=/etc/functionscoin.sh
if [[ ! -f "$FUNC" ]]; then
	source /etc/functions.sh
else
	source /etc/functionscoin.sh
fi
cd $STORAGE_ROOT/daemon_builder

RESULT=$(dialog --stdout --nocancel --default-item 1 --title "DamonBuilder" --menu "Choose one" -1 60 8 \
' ' "- New and existing Daemon builds and upgrade -" \
1 "Build New Coin Daemon from Source Code" \
2 "Upgrade an Existing Coin Daemon" \
' ' "- If your last coin failed to build try this -" \
3 "Daemon Build Failed - Help!" \
4 Exit)

if [ $RESULT = 1 ]
then
clear;
cd $STORAGE_ROOT/daemon_builder
source menu2.sh;
fi

if [ $RESULT = 2 ]
then
clear;
cd $STORAGE_ROOT/daemon_builder
source menu3.sh;
fi

if [ $RESULT = 3 ]
then
clear;
cd $STORAGE_ROOT/daemon_builder
source errors.sh;
fi

if [ $RESULT = 4 ]
then
clear;
exit;
fi