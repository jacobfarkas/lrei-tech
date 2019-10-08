#!/bin/bash
# Promote a user to `admin` group
# Substitute USERNAME with the user's account name
# By: Jacob Farkas
# October 8, 2019
# Run with admin rights
dseditgroup -o edit -a USERNAME -t user admin 
