#!/bin/sh


case $1 in
	-a)
		echo $2:$3 >> mails.dat
		;;
	-d)
		grep -v -w ^$2 mails.dat > temp
		mv temp mail.dat
		;;
	-c)
		echo c kapcsolo
		;;
	-o)
		cat mail.dat | cat -f1 -d":" | sort | uniq
		;;
	*)
		echo barmi
		;;

	esac
