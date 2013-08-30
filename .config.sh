#!/bin/bash
# A config file, it first loads the config.local.sh file to set the variables. It then sets defaults on the variables not set.

# Read the local config.local.sh
if [ -e ".config.local.sh" ]; then
	source .config.local.sh
fi

#Ok, lets set the defaults, check to see if they are set, if not then set them.
# DATA_DIR - where we store our data
# MYSQL_CMD - our mysql command
# MYSQL_USER - our mysql user to login
# MYSQL_HOST - our mysql host
# MYSQL_PASS - our password to login with

if [ -z "$DATA_DIR" ]; then
	DATA_DIR="$HOME/.mysql-clh-data"
fi

if [ -z "$MYSQL_CMD" ]; then
	MYSQL_CMD="mysql"
fi

if [ -z "$MYSQL_USER" ]; then
	MYSQL_USER="root"
fi

if [ -z "$MYSQL_HOST" ]; then
	MYSQL_HOST="localhost"
fi

if [ -z "$MYSQL_PASS" ]; then
	MYSQL_PASS=""
fi

if [ ! -d "$DATA_DIR" ]; then
	mkdir $DATA_DIR
fi