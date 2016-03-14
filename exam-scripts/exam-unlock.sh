#!/bin/bash
# Exam-unlock SCRIPT
# This script unlocks a laptop from exam-lock mode.
# Written by:
# Jacob Farkas
# March 14, 2016
# [REMOVE THE EXAM LOCK SCRIPT]
rm /usr/local/outset/boot-every/exam-lock.sh
# [DE-ACTIVATE FIREWALL]
pfctl -d
