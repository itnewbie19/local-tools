#!/bin/bash

clear;
usage(){
version="0.1"
author="c0d3_z3r0"

echo -e "=================================================================="
echo -e " ssss  hh           lll lll   ssss  hh                  kk"
echo -e "ss  ss hh            ll  ll  ss  ss hh                  kk"
echo -e " ss    hh            ll  ll   ss    hh                  kk"
echo -e "  sss  hhhhhh  eeee  ll  ll    sss  hhhhhh  oooo   cccc kk kkk"
echo -e "   sss hh  hh ee  ee ll  ll     sss hh  hh oo  oo cc    kkkk"
echo -e "ss  ss hh  hh eeeeee ll  ll  ss  ss hh  hh oo  oo cc    kk kk"
echo -e " ssss  hh  hh ee____ lll lll  ssss  hh  hh  oooo   cccc kk  kk"
echo -e "\n\t\t   Shellshock Scanning Tools"
echo -e "\t\t\t  Version : $version"
echo -e "\t\t       Author : $author"
echo -e "\t\t  contact me : solo@ibt.or.id"
echo -e "=================================================================="
}
#function call help
function menu(){
	echo -e "command for usage : sh shellshock.sh [OPTIONS]";
	echo -e "\nOptions:	";
	echo -e " -v	check your bash version";
	echo -e " -c	check shellshock vulnerability";
	echo -e " -f	fixing your vulnerability";
	echo -e " -h	command help";
}
usage;
menu;

while getopts vcfh option;
do
  case $option in
	v ) ver=1;;
	c ) check=1;; #env x='() { :;}; echo vulnerable' bash -c "echo this is a test";;
	f ) fix=1;;
	h ) clear;usage;menu;exit;;
	*) clear;usage; echo -e "\nsorry invalid options\n"; menu;;
  esac
done

if [[ ! -z $ver ]];
	then
  		clear;usage;
		printf "\nBash Version is " 
		`$BASH_VERSION`;
		exit 0;
fi

if [[ ! -z $check ]];
	then
		clear;usage;
		printf "\n"
		env x='() { :;}; echo vulnerable' bash -c "echo this is a test"
		#if 
		exit 0;

fi

if [[ ! -z $fix ]];
	then
		clear;usage;
		printf "\n"
		apt-get install bash
		exit 0;
fi