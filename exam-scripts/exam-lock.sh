#!/bin/bash
# Exam-lock SCRIPT
# This script prepares a laptop for exams.
# (1) It empties the LREI users' Desktop, Documents, and Download folders
# (2) It sets up the computer's local firewall to block Internet access
# (NOT YET IN PLACE) (3) It sets the background color to plain red
# Written by:
# Jacob Farkas
# January 11, 2012
# Updated:
# March 14, 2016
# [EMPTY DESKTOP FOLDER]
rm -rf /Users/lrei/Desktop/*
# [EMPTY DOCUMENTS FOLDER]
rm -rf /Users/lrei/Documents/*
# [EMPTY DOWNLOADS FOLDER]
rm -rf /Users/lrei/Downloads/*
# [SPECIFY FIREWALL RULES FOR EXAMS]
# Create an exam.conf file with the following rulesets
echo "#
# Exam-lock pf rules
#Block ports 80 and 443
block in proto tcp from any to any port 80
block in proto tcp from any to any port 443
block out proto tcp from any to any port 80
block out proto tcp from any to any port 443" > /usr/local/outset/share/exam.conf
# [ACTIVATE FIREWALL]
pfctl -e
pfctl -f /usr/local/outset/share/exam.conf
# [Move Script to Boot-Every]
mv /usr/local/outset/on-demand/exam-lock.sh /usr/local/outset/boot-every/
# [SET PERMISSIONS FOR EXAM-LOCK SCRIPT]
chown root:wheel /usr/local/outset && chmod -R 755 /usr/local/outset/boot-every/*
