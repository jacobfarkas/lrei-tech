#!/bin/bash

# Download Office 2016 using curl
curl -o /usr/local/etc/office2016.pkg https://redacted(see slack channel --#sysadmin for full URL)

# Install Office 2016
installer -pkg /usr/local/etc/office2016.pkg -target /
