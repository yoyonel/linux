#! /bin/bash

# url: http://arstechnica.com/civis/viewtopic.php?f=16&t=113430

catcher ()
{
	echo "SegFault!"
	trap catcher ERR
	run_SymuNet
}

run_SymuNet ()
{
	wine '/home/latty/__DEV__/__Ifsttar__/Envoi_IGN_2015/New_Symunet/SymuNet.exe'
}

trap catcher ERR
run_SymuNet


