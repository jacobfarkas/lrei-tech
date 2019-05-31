#!/bin/bash
# Exam-lock SCRIPT
#
# This script prepares a laptop for use in exams. 
# It first checks to see if a user is logged in as the `exam` user
#
# It sets the background color to plain red
#
# It also enables the local firewall to block regular internet traffic.
#
# Written by:
# Jacob Farkas
# January 11, 2012
#
# Updated:
# May 31, 2019

if [ "$1" == 'exam' ]
then
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/Solid Colors/Red Orange.png"'
pfctl -ef /usr/local/exam.conf
else
pfctl -d
fi
